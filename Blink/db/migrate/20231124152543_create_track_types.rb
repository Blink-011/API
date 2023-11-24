class CreateTrackTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :track_types do |t|

      t.timestamps
    end
  end
end
