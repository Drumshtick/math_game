class Player
  def initialize(player)
    @name = player
    @lives = 3
  end

  def remove_life
    @lives = @lives - 1
  end
end
