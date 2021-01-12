class Restaurant < ApplicationRecord

  CATEGORY = %w(chinese italian japanese french belgian)

  has_many :reviews, dependent: :destroy # @restaurant.reviews
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
