class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :restaurant, presence: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end
