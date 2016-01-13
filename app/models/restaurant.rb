class Restaurant < ActiveRecord::Base
  has_many :menus
  has_many :locations

  validates :name, presence: true, length: { maximum: 128 }
end
