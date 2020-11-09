require "./Game"
require "./Player"
require "./Math_Question"

game = Game.new

# ask user to create players
game.create_players

# play game
game.play