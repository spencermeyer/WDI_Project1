class Game < ActiveRecord::Base
  # validates :diff, inclusion: { in: %w(1 2 3 4 5), message: "1-5" }
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :opponent, class_name: 'User', foreign_key: 'opponent_id'
  has_many :moves

  def whosmove
    Move.last.try(:value)
  end

  def winner
    winning_combinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    test = []
    i=0
    while i<8
      if (moves.find_by_number(i).present?)
        test[i] = moves.find_by_number(i).value
      end
      i+=1
    end
  while i<8




    test
  end
  




# when player crosses have X cells that he played
    # find the index of the cells he played, then compare the index to the winning_combinations 

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




