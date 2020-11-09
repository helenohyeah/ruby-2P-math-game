require "./Player"
require "./Math_Question"

class Game
  # tracks turn order (current player)
  # tracks overall game logic and order (ask, wait for ansewer etc)

  attr_accessor :current_turn, :current_player
  attr_reader :players

  def initialize
    @current_turn = 0
    @current_player = 0
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

    # start a turn if players are alive
    while players[0].current_life > 0 && players[1].current_life > 0 do
      self.play_turn
    end
    
    # game over
    p players
    puts "A player is ded"

  end

  def play_turn
    p self

    # ask a math question
    current_question = Question.new
    p current_question
    puts "Player #{players[current_player].player_number}: What does #{current_question.num1} plus #{current_question.num2} equal?"

    # get answer from user
    current_answer = gets.chomp

    # validate answer
    if current_question.validate(current_answer) == true
      puts "Yes! You are correct."
    else
      puts "Seriously? No!"
      # change score
      players[current_player].current_life -= 1
      # p players
    end

    # print score
    puts "P1: #{players[0].current_life}/3 vs P2: #{players[1].current_life}/3"

    # change current player
    if current_player == 0
      self.current_player = 1
    elsif current_player == 1
      self.current_player = 0
    end

  end

end