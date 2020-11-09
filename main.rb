require "./Game" # runs the game, gets user input and gives game updates
require "./Player" # tracks player information
require "./Math_Question" # generates questions

game = Game.new

# ask user to create players
game.create_players

# play game
game.play