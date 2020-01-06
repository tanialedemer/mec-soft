class CreatePagoFacturas < ActiveRecord::Migration[5.2]
  def change
    create_table :pago_facturas do |t|
      t.references :compra, foreign_key: true
      t.float :monto_pago

      t.timestamps
    end
  end
end
