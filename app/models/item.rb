class Item < ActiveRecord::Base
  belongs_to :section
  has_many :favorites
  has_many :users, through: :favorites

  acts_as_taggable
  # Tag types
  acts_as_taggable_on :diets, :tastes, :ingredients
end
