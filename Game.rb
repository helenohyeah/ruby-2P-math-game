require "./Player"
require "./Math_Question"

class Game

  attr_accessor :current_turn, :current_player
  attr_reader :players

  def initialize
    @current_turn = 0
    @current_player = 0
    @players = []
  end

  def create_players
    puts "Player 1, enter a name: "
    players.push(Player.new(1, gets.chomp))
    puts "Player 2, enter a name: "
    players.push(Player.new(2, gets.chomp))
  end

  def play
    puts "\n****** GAME START ******"

    # start a turn if players are alive
    while players[0].current_life > 0 && players[1].current_life > 0 do
      puts "\n------ NEW TURN ------"
      self.play_turn
    end

    # print winner and winning score    
    puts "\n------ GAME OVER ------"
    puts "#{players[current_player].name} wins with a score of #{players[current_player].current_life}/3!"
    puts "Good bye!"
  end

  def play_turn
    # ask a math question
    current_question = Question.new
    puts "#{players[current_player].name}, what does #{current_question.num1} plus #{current_question.num2} equal?"

    # get answer from user
    current_answer = gets.chomp

    # validate answer
    if current_question.validate(current_answer) == true
      puts "Yes! You are correct. ❤️🎇❤️"
    else
      puts "Seriously? No! (╯°□°)╯︵ ┻━┻"
      # change score
      players[current_player].current_life -= 1
    end

    # print score
    puts "P1 (#{players[0].name}): #{players[0].current_life}/3 vs P2 (#{players[1].name}): #{players[1].current_life}/3"
    
    # change current player
    if current_player == 0
      self.current_player = 1
    elsif current_player == 1
      self.current_player = 0
    end
  end

end