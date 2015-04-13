class User < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :email, presence: true
  has_many :games
  has_many :moves, through: :game
end
