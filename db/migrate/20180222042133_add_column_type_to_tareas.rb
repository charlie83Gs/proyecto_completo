class AddColumnTypeToTareas < ActiveRecord::Migration[5.1]
  def change
    add_column :tareas, :pro_type, :integer
  end
end
