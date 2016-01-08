class Item < ActiveRecord::Base
  belongs_to :section
  has_many :favorites
  has_many :users, through: :favorites
end
