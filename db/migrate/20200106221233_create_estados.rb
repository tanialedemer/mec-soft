class CreateEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :estados do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
