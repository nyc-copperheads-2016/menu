class Section < ActiveRecord::Base
  belongs_to :menu
  has_many :items

  validates :name, presence: true, length: { maximum: 64 }
end
