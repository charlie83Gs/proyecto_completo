class CreateMuestreos < ActiveRecord::Migration[5.1]
  def change
    create_table :muestreos do |t|
      t.datetime :fecha_inicio
      t.datetime :fecha_fin
      t.integer :meta
      t.integer :proyecto_id

      t.timestamps
    end
  end
end
