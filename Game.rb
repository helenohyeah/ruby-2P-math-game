require "./Player"
require "./Math_Question"

class Game
  # tracks turn order (current player)
  # tracks overall game logic and order (ask, wait for ansewer etc)

  attr_accessor :questions, :current_turn
  attr_reader :players

  def initialize
    @questions = []
    @current_turn = 0
    @current_player = 1
    @players = []
  end

  def create_players
    # puts "Player 1, enter a name: "
    # players.push(Player.new(1, gets.chomp))
    # puts "Player 2, enter a name: "
    # players.push(Player.new(2, gets.chomp))
    players.push(Player.new(1, "Helen"))
    players.push(Player.new(2, "Shane"))
  end

  def play

    # ask a math question
    current_question = Question.new
    p current_question
    questions.push(current_question)
    puts "Player #{@current_player}: What does #{current_question.num1} plus #{current_question.num2} equal?"
    
    # get answer from user
    current_answer = gets.chomp

    # validate answer
    if current_question.validate(current_answer) == true
      puts "Yes! You are correct."
    else
      puts "Seriously? No!"
    end

  end

end