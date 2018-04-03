class AddRandomToMuestreos < ActiveRecord::Migration[5.1]
  def change
  	add_column :muestreos, :minimo, :int
  	add_column :muestreos, :maximo, :int
  end
end
