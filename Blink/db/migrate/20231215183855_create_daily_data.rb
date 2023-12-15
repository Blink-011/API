class CreateDailyData < ActiveRecord::Migration[7.1]
  def change
    create_table :daily_data do |t|
      t.date :day 
      t.time :start_time
      t.time :end_time
      t.timestamps
    end
  end
end
