class Location < ActiveRecord::Base
  belongs_to :restaurant

  validates :address, :zip, presence: true
  validates :city, length: { maximum: 120 }
  validates :state, length: { maximum: 2 }
end
