class Menu < ActiveRecord::Base
  belongs_to :restaurant
  has_many :sections
  has_many :items, through: :sections

  validates :name, presence: true
end
