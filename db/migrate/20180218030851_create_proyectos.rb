class CreateProyectos < ActiveRecord::Migration[5.1]
  def change
    create_table :proyectos do |t|
      t.datetime :fecha_inicio
      t.text :descripcion

      t.timestamps
    end
  end
end
