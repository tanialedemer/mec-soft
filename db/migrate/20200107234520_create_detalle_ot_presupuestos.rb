class CreateDetalleOtPresupuestos < ActiveRecord::Migration[6.0]
  def change
    create_table :detalle_ot_presupuestos do |t|
      t.integer :cantidad
      t.float :precio_venta
      t.float :subtotal
      t.references :repuesto_servicio, null: false, foreign_key: true
      t.references :orden_trabajo_presupuesto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
