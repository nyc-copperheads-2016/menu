class Item < ActiveRecord::Base
  belongs_to :section
  has_many :favorites
  has_many :users, through: :favorites

  acts_as_taggable
  # Tag types
  acts_as_taggable_on :diets, :tastes, :ingredients

  validates :name, presence: true, length: { maximum: 128 }

  # def self.popular(menu)
  #   items = menu.items
  #   pop_array = items.select{|item| item.favorites.count > 0 }.sort_by { |item| item.favorites.count }
  #   if pop_array.length > 6
  #     pop_array.slice!(-6, -1)
  #   end
  #   pop_array
  # end
end
