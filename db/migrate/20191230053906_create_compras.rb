class CreateCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :compras do |t|
      t.date :fecha
      t.references :proveedor, foreign_key: true
      t.integer :num_fact
      t.float :total
      t.float :pago
      t.float :saldo
      t.references :tipo_factura, foreign_key: true

      t.timestamps
    end
  end
end
