class Review < ApplicationRecord
  RANGE = (0..5)
  belongs_to :restaurant
  validates :content, presence: true
  validates :restaurant, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: RANGE}
  validates :rating, numericality: { only_integer: true}
end
