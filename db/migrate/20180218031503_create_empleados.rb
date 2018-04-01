class CreateEmpleados < ActiveRecord::Migration[5.1]
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :tipo

      t.timestamps
    end
  end
end
