class CreateTrackedItems < ActiveRecord::Migration[7.0]
  def change
    create_table :tracked_items do |t|

      t.timestamps
    end
  end
end
