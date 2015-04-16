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
    maxindicatorx=0
    maxindicator0=0
    message = ""
    winning_combinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    testx = [" "," "," "," "," "," "," "," "," "]
    i=0
    while i<9
      if (moves.find_by_number(i).present?)
        testx[i] = moves.find_by_number(i).number
      end
      i+=1
    end
    #test for matches to winning combinations
    j=0
    k=0
    while j<8
      indicatorx = 0
      indicator0 = 0
      while k<3
        if testx.include?(winning_combinations[j][k]) && result = moves.find_by_number(j).try(:value) == 'x'
          indicatorx=indicatorx+1
        elsif testx.include?(winning_combinations[j][k]) && result = moves.find_by_number(j).try(:value) == 'o'
          indicator0=indicator0+1
        end
        k+=1
      end
      if(indicatorx>maxindicatorx)
        maxindicatorx = indicatorx
      end
      if(indicator0>maxindicator0)
        maxindicator0 = indicator0
      end
      j+=1
    end
    maxindicatorx
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

