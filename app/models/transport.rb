class Transport < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings

  has_one_attached :photo

  # Geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
