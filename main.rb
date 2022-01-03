require './NewGame.rb'
require './Player.rb'
require './Turn.rb'
require './Question.rb'


game = NewGame.new

game.play_game

newTurn = Turn.new("P1")

p newTurn


newQ = Question.new
p newQ
