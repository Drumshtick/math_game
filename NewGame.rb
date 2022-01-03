class NewGame

  attr_accessor :p1, :p2

  def initialize
    @p1 = Player.new("P1")
    @p2 = Player.new("P2") 
  end
end
