class AddRefsToMuestra < ActiveRecord::Migration[5.1]
  def change
    add_column :muestras, :tarea_id, :int
    add_column :muestras, :empleado_id, :int
  end
end
