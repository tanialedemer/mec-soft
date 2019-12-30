class CreateRepuestoServicios < ActiveRecord::Migration[5.2]
  def change
    create_table :repuesto_servicios do |t|
      t.string :codigo
      t.string :descripcion
      t.integer :stock
      t.float :costo
      t.float :precio_venta
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
