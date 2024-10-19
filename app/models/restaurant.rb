class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian], message: "%{value} is not a valid category." }
  validates :name, :address, presence: true
end
