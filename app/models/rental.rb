class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :car

  #scope :user_rental, ->(user){where('user_id = ?',user.id) }
end
