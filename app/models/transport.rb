class Transport < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings
  has_one_attached :photo
end
