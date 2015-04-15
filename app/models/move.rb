class Move < ActiveRecord::Base
  # validates :value, inclusion: { in: %w(0 X), message: "Xor0 Xor0 Xor0 !!!!!"}
  validates :number, inclusion: { in: (0...9).to_a}
  # validates :number, uniqueness: true
  belongs_to :game
  belongs_to :user
 

  # def moves_in_game
  #   game.moves.find_by_number(number).present?
  # end
end

