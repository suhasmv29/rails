class VideoGame < ApplicationRecord
    belongs_to :sale, class_name: 'Sale', foreign_key:
    self.primary_key = "rank"
end
