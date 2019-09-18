class Review < ApplicationRecord
  belongs_to :restaurant_id
  validates :content, :rating, :restaurant_id, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
