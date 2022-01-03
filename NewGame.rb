class NewGame

  attr_reader :p1, :p2

  def initialize
    @p1 = Player.new("P1")
    @p2 = Player.new("P2") 
  end

  def play_game
    while @p1.lives > 1 && @p2.lives > 1 do
      # Display lives
      puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3"
      # turn = Turn.new(@p1.name)
      break
    end
    puts "⛔⛔⛔⛔ GAME OVER ⛔⛔⛔⛔"
  end
end
