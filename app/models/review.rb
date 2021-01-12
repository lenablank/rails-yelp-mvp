class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :raiting, presence: true, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
