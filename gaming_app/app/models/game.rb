class Game < ActiveRecord::Base
  belongs_to_many :Users
  has_many :Moves
end
