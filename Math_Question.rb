# generate math problem
# check answer
class Question
  
  attr_reader :num1, :num2, :solution

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @solution = num1 + num2
  end

  def validate(answer)
    answer.to_i == @solution
  end

end