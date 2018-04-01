class CreateObservacions < ActiveRecord::Migration[5.1]
  def change
    create_table :observacions do |t|
      t.belongs_to :muestreo, index: true
      t.text :descripcion

      t.timestamps
    end
  end
end
