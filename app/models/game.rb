class Game < ActiveRecord::Base
  # validates :diff, inclusion: { in: %w(1 2 3 4 5), message: "1-5" }
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :opponent, class_name: 'User', foreign_key: 'opponent_id'
  has_many :moves

  def whosmove
    Move.last.try(:value)
  end

  def winner
    win=3
    indicator=0
    maxindicatorx=0
    maxindicator0=0
    winning_combinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    test = [" "," "," "," "," "," "," "," "," "]
    i=0
    while i<9
      if (moves.find_by_number(i).present?)
        test[i] = moves.find_by_number(i).number
      end
      i+=1
    end
    #test for matches to winning combinations
    i=0
    j=0
    k=0
    while j<8
      while k<3
        if test.include?(winning_combinations[j][k])
          indicator=indicator+1
          if(indicator>maxindicator)
            maxindicatorx = indicator
          end
        end
        k+=1
      end
      j+=1
    end
maxindicator=indicator
indicator = 0

maxindicatorx
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




