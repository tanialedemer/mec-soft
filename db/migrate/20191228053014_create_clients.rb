class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.integer :ruc
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.string :telefono
      t.string :email

      t.timestamps
    end
  end
end
