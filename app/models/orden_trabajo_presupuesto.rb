class OrdenTrabajoPresupuesto < ApplicationRecord
  belongs_to :client
  belongs_to :vehiculo
  belongs_to :estado
  belongs_to :tipo_factura
  belongs_to :mecanico
  has_many :detalle_ot_presupuestos, inverse_of: :orden_trabajo_presupuesto, dependent: :destroy


  accepts_nested_attributes_for :detalle_ot_presupuestos, reject_if: :detalle_ot_presupuestos_rejectable?,
									allow_destroy: true

	def total
		details = self.detalle_ot_presupuestos

		total = 0.0
		details.flat_map do |d|
			total += d.cantidad * d.precio_venta
		end
		total
	end

	private

		def detalle_ot_presupuestos_rejectable?(att)
			att[:repuesto_servicio_id].blank? || att[:cantidad].blank? || att[:precio_venta].blank? || att[:cantidad].to_f <= 0 || att[:precio_venta].to_f <= 0
		end
end
