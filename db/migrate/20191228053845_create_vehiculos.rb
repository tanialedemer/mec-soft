class CreateVehiculos < ActiveRecord::Migration[5.2]
  def change
    create_table :vehiculos do |t|
      t.references :client, foreign_key: true
      t.string :modelo
      t.string :color
      t.string :matricula
      t.string :marca
      t.float :km
      t.string :chasis
      t.integer :year_fab

      t.timestamps
    end
  end
end
