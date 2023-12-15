class CreateUsersTracks < ActiveRecord::Migration[7.1]
  def change
    create_table :users_tracks do |t|
      t.belongs_to :user, class_name: "user", foreign_key: "user_id"
      t.belongs_to :track, class_name: "track", foreign_key: "track_id"

      t.timestamps
    end
  end
end
