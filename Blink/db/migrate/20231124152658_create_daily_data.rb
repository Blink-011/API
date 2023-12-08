class CreateDailyData < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_data do |t|
      t.date :day 
      t.time :start_time
      t.time :end_time
      belongs_to :user, class_name: "user", foreign_key: "user_id"
      belongs_to :track, class_name: "track", foreign_key: "track_id"
      belongs_to :track_item, class_name: "track_item", foreign_key: "track_item_id"
      t.timestamps
    end
  end
end
