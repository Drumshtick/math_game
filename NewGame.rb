class NewGame

  attr_reader :p1, :p2

  def initialize
    @p1 = Player.new("P1")
    @p2 = Player.new("P2") 
  end

  def play_game
    puts
    puts "     🎲🎲🎲🎲🎲🎲🎲🎲🎲🎲"
    puts "    🎲🎲🎲 New Game! 🎲🎲🎲"
    puts "     🎲🎲🎲🎲🎲🎲🎲🎲🎲🎲"
    puts
    while @p1.lives != 0 && @p2.lives != 0 do
      # Display lives
      turn = Turn.new
      puts
      puts turn.new_turn
      puts "             #{p1.name}: #{p1.lives}/3 🆚 #{p2.name}: #{p2.lives}/3"
      puts

      print "#{turn.current_player}: #{turn.ask_question}"
      player_answer = gets.chomp
      puts 
      result = turn.correct_answer(player_answer.to_i)
      if (result)
        puts "#{turn.current_player}:✔️   Yes! You are correct."
        puts
      else
        puts "#{turn.current_player}:❌   oh... You are incorrect."
        puts
        if (turn.current_player == "p1")
          @p1.remove_life
        else
          @p2.remove_life
        end
      end
    end
    if (p1.lives == 0)
      puts "  👑👑👑👑👑👑👑👑👑👑👑👑"
      puts "👑👑👑 #{p2.name} Wins! 👑👑👑"
      puts "  👑👑👑👑👑👑👑👑👑👑👑👑"
      puts 
      puts "With #{p2.lives}💗 remaining."
    elsif (p2.lives == 0)
      puts "  👑👑👑👑👑👑👑👑👑👑👑👑"
      puts "👑👑👑 #{p1.name} Wins! 👑👑👑"
      puts "  👑👑👑👑👑👑👑👑👑👑👑👑"
      puts
      puts "With #{p1.lives}💗 remaining."
    end
    puts
    puts "⛔⛔⛔⛔ GAME OVER ⛔⛔⛔⛔"
  end

end

