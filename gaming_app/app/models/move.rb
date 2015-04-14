class Move < ActiveRecord::Base
  validates :value, inclusion: { in: %w(0 X), message: "Xor0 Xor0 Xor0 !!!!!"}
  validates :number, inclusion: { in: (0...9).to_a}
  belongs_to :game
end

