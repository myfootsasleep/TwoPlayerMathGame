require './player'
require './question'

def playGame

print "Please Enter Player 1 Name: "
player1 = Player.new(gets.chomp)
print "Please Enter Player 2 Name: "
player2 = Player.new(gets.chomp)

def getWinner(p1, p2)
 if p1.lives > 0
  return p1
 else 
  return p2
  end
end

def printWinner (p1, p2)
  winner = getWinner(p1, p2)
  puts "#{winner.name} has won the game #{winner.lives}/3"
end

while player1.lives > 0 && player2.lives > 0
  print "#{player1.name} What is: "
  question = Question.new
  result = question.ask_question
  if !result
    player1.lives -= 1
  end
 puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
 break if player1.lives == 0
 puts "-----NEW TURN-----"
  print "#{player2.name} What is: "
  question = Question.new
  result = question.ask_question
  if !result
    player2.lives -= 1
  end
  puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
  break if player2.lives == 0
  puts "-----NEW TURN-----"
end
puts "-----Game Over-----"

printWinner(player1, player2)

end
