class User < ActiveRecord::Base
  has_secure_password
  has_many :favorites
  has_many :items, through: :favorites

  validates :username, :password, :email, presence: true
  validates_uniqueness_of :username, :email
  validates :username, length: { minimum: 4 }
  validates :password, length: { minimum: 8 }
  validates :email, :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
