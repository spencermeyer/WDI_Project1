game = ["X","X","0","X","","0","X","","0"]
gamex = [
  ["X", "X", "X", "","","","","",""],
  ["", "", "", "X","X","X","","",""],
  ["", "", "", "","","","X","X","X"],
  ["X", "", "", "X","","","X","",""],
  ["", "X", "", "","X","","","X",""],
  ["", "", "X", "","","X","","","X"],
  ["X", "", "", "","X","","","","X"],
  ["", "", "X", "","X","","X","",""]
]
game0 = [
  ["0", "0", "0", "","","","","",""],
  ["", "", "", "0","0","0","","",""],
  ["", "", "", "","","","0","0","0"],
  ["0", "", "", "0","","","0","",""],
  ["", "0", "", "","0","","","0",""],
  ["", "", "0", "","","0","","","0"],
  ["0", "", "", "","0","","","","0"],
  ["", "", "0", "","0","","0","",""]
]
# define variables
sumx = 0
sum0 = 0
nextmove = 0

i=0
while i< 8 do
  j=0
  while j < 9 do
    if (game[j]!="" && (game[j] == gamex[i][j]))
     sumx = sumx+1
   end
   if (game[j]!="" && (game[j] == game0[i][j]))
    sum0 = sum0+1
  end
   # puts game[j]
   j+=1
 end
 i+=1
 puts "total x is", sumx, "total 0 is", sum0, "for match", i
 sumx=0
 sum0=0
end
