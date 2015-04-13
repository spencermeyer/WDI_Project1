class User < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :email, presence: true
  has_many :Games
  has_many :Moves, through: :Games
end
