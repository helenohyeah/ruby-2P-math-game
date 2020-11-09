require "./Game"
require "./Math_Question"
require "./Player"
require "./Announcer"

# ASK USER FOR NAMES AND CREATE PLAYERS
announcer = Announcer.new
names = announcer.create_players

p1 = Player.new(1, names[0])
p2 = Player.new(2, names[1])
# puts p1.inspect
# puts p2.inspect

announcer.print_score(p1.current_life, p2.current_life)