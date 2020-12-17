class Sale < ApplicationRecord
    has_one :video_game
    
    self.primary_key = "rank"
end
