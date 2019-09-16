require "./questions"
require "./lives"
require "./turn"

game = Turn.new
player1 = Lives.new
player2 = Lives.new

while game.game_state == "live"

  question = Questions.new
  puts "#{game.active_turn}: #{question.qString}"
  answer = gets.chomp.to_i

  if answer == question.answer.to_i
    puts "Yes! You're a real math genius!"
  else
    if game.active_turn == "Player 1"
      player1.subtractLive
    else
      player2.subtractLive
    end

    if player1.lives == 0 
      puts "Player 2 wins!"
      puts "-----GAME OVER-----"
      break
    elsif 
      player2.lives == 0 
      puts "Player 1 wins!"
      puts "-----GAME OVER-----"
      break
    end

    puts "Hell no! Maybe you should considering taking grade 4 math class again?"
  end

  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  puts "---------------------"
  puts "------NEW TURN-------"
  game.switchTurn
end

