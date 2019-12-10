class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :user, presence: true
  validates :car, presence: true
  validates :start, presence: true
  validates :end, presence:true
  validates :address, presence:true
  
  scope :user_rental, ->(user){where(['user_id = ?', user.id]) }
end
