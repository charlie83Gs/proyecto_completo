class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.integer :muestreo_id
      t.datetime :hora

      t.timestamps
    end
  end
end
