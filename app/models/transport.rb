class Transport < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_one_attached :photo
  CATEGORY = ["moto", "bycle", "trot", "car", "bus"]
  # validates :category, inclusion: { in: CATEGORY }
end
