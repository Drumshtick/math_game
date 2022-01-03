class NewGame

  attr_reader :p1, :p2

  @@new_game_str =    "
  🎲🎲🎲🎲🎲🎲🎲🎲🎲🎲
 🎲🎲🎲 New Game! 🎲🎲🎲
  🎲🎲🎲🎲🎲🎲🎲🎲🎲🎲
                "
  @@game_over_str = "
  ⛔⛔⛔⛔ GAME OVER ⛔⛔⛔⛔"

  def initialize
    @p1 = Player.new("P1")
    @p2 = Player.new("P2") 
  end

  def play_game
    puts @@new_game_str
    while @p1.lives != 0 && @p2.lives != 0 do
      # Create new turn
      turn = Turn.new
      puts
      puts turn.new_turn
      puts "             #{p1.name}: #{p1.lives}/3 🆚 #{p2.name}: #{p2.lives}/3"
      puts
      # print question & get result
      print "#{turn.current_player}: #{turn.ask_question}"
      player_answer = gets.chomp
      puts 
      # Verify result
      result = turn.is_correct(player_answer)
      if (result)
        puts "#{turn.current_player}:✔️   Yes! You are correct."
        puts
      else
        # answer incorrect remove life from player
        puts "#{turn.current_player}:❌   oh... You are incorrect."
        puts
        if (turn.current_player == "p1")
          @p1.remove_life
        else
          @p2.remove_life
        end
      end
    end
    # Award winner when loop completes
    if (p1.lives == 0)
      puts p2.winner_str
    elsif (p2.lives == 0)
      puts p1.winner_str
    end
    puts @@game_over_str
  end

end

