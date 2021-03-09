class Booking < ApplicationRecord
  belongs_to :transport
  belongs_to :user
end
