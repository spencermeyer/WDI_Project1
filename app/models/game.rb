class Game < ActiveRecord::Base
  # validates :diff, inclusion: { in: %w(1 2 3 4 5), message: "1-5" }
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :opponent, class_name: 'User', foreign_key: 'opponent_id'
  has_many :moves

  def whosmove
    Move.last.try(:value)
  end

  def winner
    #moves.last.value
    # moves.find_by_user_id(1).value


   # this worked:  moves.find_by_number(1).value

  end

  # First move is always x
  def next_value
    return "x" if first_move?
    last_move == "x" ? "o" : "x" 
  end

  private

  def first_move?
    moves.empty?
  end

  def last_move
    moves.last.value
  end
end

#@game.moves.last.try(:number)


