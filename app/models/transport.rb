class Transport < ApplicationRecord
  # CONSTANT
  CATEGORY = ["Car", "Motorcycle", "Rocket", "Bicycle", "Bus", "Scooter", "Animal", "Other"]

  # Dependencies
  belongs_to :owner, class_name: 'User'
  has_many :bookings

  # Validates
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }

  # Picture
  has_one_attached :photo

  # Geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
