class CreateUsersTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :users_tracks do |t|

      t.timestamps
    end
  end
end
