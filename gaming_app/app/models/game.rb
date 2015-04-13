class Game < ActiveRecord::Base
  validates :diff, inclusion: { in: %w(1 2 3 4 5), message: "1-5"} 
  belongs_to :user
  has_many :moves
end
