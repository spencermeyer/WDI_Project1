class Move < ActiveRecord::Base
  validates :value, inclusion: { in: %w(0 X), message: "Xor0 Xor0 Xor0 !!!!!"}
  validates :number, inclusion: { in: %w(0 1 2 3 4 5 6 7 8 9)}
  belongs_to :Games
end
