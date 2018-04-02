class AddIdProyecto < ActiveRecord::Migration[5.1]
  def change
  	add_column :empleados, :proyecto_id, :integer
  end
end
