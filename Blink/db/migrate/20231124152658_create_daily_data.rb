class CreateDailyData < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_data do |t|

      t.timestamps
    end
  end
end
