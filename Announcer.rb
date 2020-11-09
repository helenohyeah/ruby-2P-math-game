# asks question
# announces results
# announces score
# announces game over
class Announcer

  def initialize
  end

  def print_score(life1, life2)
    puts "P1: #{life1}/3 vs P2: #{life2}/3"
  end

  def print_question(question)
    puts "Printing Question..."
    puts "Player 1: What does #{question.num1} plus #{question.num2} equal?"
  end

end