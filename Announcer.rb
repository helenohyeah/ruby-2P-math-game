# asks question
# announces results
# announces score
# announces game over
class Announcer

  def initialize
  end

  def create_players
    names = []
    puts "Player 1, enter a name: "
    names.push(gets.chomp)
    puts "Player 2, enter a name: "
    names.push(gets.chomp)
    names
  end

  def print_score(life1, life2)
    puts "P1: #{life1}/3 vs P2: #{life2}/3"
  end

end