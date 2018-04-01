class CreateMuestras < ActiveRecord::Migration[5.1]
  def change
    create_table :muestras do |t|
      t.belongs_to :muestreo, index: true
      t.datetime :hora
      t.float :humedad
      t.float :temperatura

      t.timestamps
    end
  end
end
