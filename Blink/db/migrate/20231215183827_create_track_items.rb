class CreateTrackItems < ActiveRecord::Migration[7.1]
  def change
    create_table :track_items do |t|
      t.string :name
      t.string :color
      t.belongs_to :track, class_name: "track", foreign_key: "track_id"

      t.timestamps
    end
  end
end
