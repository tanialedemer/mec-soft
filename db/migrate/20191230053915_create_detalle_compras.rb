class CreateDetalleCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :detalle_compras do |t|
      t.references :compra, foreign_key: true
      t.references :repuesto_servicio, foreign_key: true
      t.integer :cantidad
      t.float :precio_unitario
      t.float :precio_venta
      t.float :subtotal

      t.timestamps
    end
  end
end
