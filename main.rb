require "./Game" # runs the game, gets user input and gives game updates
require "./Player" # tracks player information
require "./Math_Question" # generates questions

game = Game.new

# ASK USER FOR NAMES AND CREATE PLAYERS
game.create_players

p game

game.play

# announcer.print_score(p1.current_life, p2.current_life)

# game.turn(Question.new)

# announcer.print_question(questions[index])
# answer = gets.chomp
# puts questions[index].validate(answer)