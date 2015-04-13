class User < ActiveRecord::Base
  has_many :Games
  has_many :Moves, through: :Games
end
