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

  # PG search
  include PgSearch::Model
  scope :sorted, ->{ order(name: :asc) }
  pg_search_scope :search_by_name_description_city_country,
    against: [ :name, :description, :category, :address],
    using: {
      tsearch: { prefix: true }
    }

  def count_reserved_days
    total = 0
    bookings.each do |booking|
      total += (booking.end_date - booking.start_date).to_i + 1
    end
    total
  end

  def count_reserved_numbers
    total = 0
    bookings.each do |booking|
      total += 1
    end
    total
  end

end
