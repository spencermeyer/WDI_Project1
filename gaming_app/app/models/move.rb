class Move < ActiveRecord::Base
  validates :value, inclusion: { in: %w(0 X), message: "Xor0 Xor0 Xor0 !!!!!"}
  belongs_to :Games
end
