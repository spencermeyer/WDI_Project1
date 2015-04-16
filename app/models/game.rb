class Game < ActiveRecord::Base
  # validates :diff, inclusion: { in: %w(1 2 3 4 5), message: "1-5" }
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :opponent, class_name: 'User', foreign_key: 'opponent_id'
  has_many :moves

  def whosmove
    Move.last.try(:value)
  end

  def winner
    test = ["","","","","","","","",""]
    i=0
    while i<9 do
      if(moves.find_by_number(i).present?)
        test[i]=moves.find_by_number(i).value
      end
      i+=1
    end
    testx = [
      ["x", "x", "x", "","","","","",""],
      ["", "", "", "x","x","x","","",""],
      ["", "", "", "","","","x","x","x"],
      ["x", "", "", "x","","","x","",""],
      ["", "x", "", "","x","","","x",""],
      ["", "", "x", "","","x","","","x"],
      ["x", "", "", "","x","","","","x"],
      ["", "", "x", "","x","","x","",""]
    ]
    test0 = [
      ["0", "0", "0", "","","","","",""],
      ["", "", "", "0","0","0","","",""],
      ["", "", "", "","","","0","0","0"],
      ["0", "", "", "0","","","0","",""],
      ["", "0", "", "","0","","","0",""],
      ["", "", "0", "","","0","","","0"],
      ["0", "", "", "","0","","","","0"],
      ["", "", "0", "","0","","0","",""]
    ]
    sumx = 0
    maxsumx = 0
    maxsum0 = 0
    i=0
    while i< 8 do
      j=0
      while j < 9 do
        if (test[j]!="" && (test[j] == testx[i][j]))
         sumx = sumx+1
         if(sumx>maxsumx)
          maxsumx=sumx
        end
       end
       if (test[j]!="" && (test[j] == test0[i][j]))
        sum0 = sum0+1
         if(sum0>maxsum0)
          maxsum0=sum0
        end
      end
      j+=1
    end
    i+=1
     # puts "total x is", sumx, "total 0 is", sum0, "for match", i
     sumx=0
     sum0=0
     return maxsumx
   end
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




