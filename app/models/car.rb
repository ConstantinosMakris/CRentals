class Car < ApplicationRecord
  has_many :rentals, dependent: :destroy
  validates :model, presence: true
  validates :engine, presence: true
  validates :seats, presence: true
  validates :transmission, presence: true
  validates :ac, presence: true
  validates :priceDay, presence: true
  validates :priceWeek, presence: true
end
