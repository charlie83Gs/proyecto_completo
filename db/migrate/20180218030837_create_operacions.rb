class CreateOperacions < ActiveRecord::Migration[5.1]
  def change
    create_table :operacions do |t|
      t.belongs_to :proyecto, index: true
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
