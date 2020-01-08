class CreateOrdenTrabajoPresupuestos < ActiveRecord::Migration[6.0]
  def change
    create_table :orden_trabajo_presupuestos do |t|
      t.date :fecha
      t.string :descripción
      t.references :client, null: false, foreign_key: true
      t.integer :num_orden
      t.references :vehiculo, null: false, foreign_key: true
      t.float :total
      t.references :estado, null: false, foreign_key: true
      t.references :tipo_factura, null: false, foreign_key: true
      t.references :mecanico, null: false, foreign_key: true

      t.timestamps
    end
  end
end
