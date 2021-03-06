class Compra < ApplicationRecord
  belongs_to :proveedor
  belongs_to :tipo_factura
  has_many :detalle_compras, inverse_of: :compra, dependent: :destroy
  has_many :pago_facturas, inverse_of: :pago_factura, dependent: :destroy

  validates :fecha , presence: true
  validates :num_fact , presence: true

  accepts_nested_attributes_for :detalle_compras, reject_if: :detalle_compra_rejectable?,
									allow_destroy: true
  accepts_nested_attributes_for :pago_facturas, reject_if: :pago_factura_rejectable?,
									allow_destroy: true

	def total
		details = self.detalle_compras

		total = 0.0
		details.flat_map do |d|
			total += d.cantidad * d.precio_unitario
		end
		total
	end

	private

		def detalle_compra_rejectable?(att)
			att[:repuesto_servicio_id].blank? || att[:cantidad].blank? || att[:precio_unitario].blank? || att[:cantidad].to_f <= 0 || att[:precio_unitario].to_f <= 0
		end
		def pago_factura_rejectable?(att)
			att[:compra_id].blank? || att[:monto_pago].blank? || att[:monto_pago].to_f <= 0
		end
end
