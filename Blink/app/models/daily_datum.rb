class DailyDatum < ApplicationRecord
    belongs_to :user
    belongs_to :track
    belongs_to :track_item
end
