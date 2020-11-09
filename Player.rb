# create player
# tracks life ("score")
class Player

  attr_accessor :current_life
  attr_reader :player_number, :name

  def initialize(p_num, n)
    @name = n
    @player_number = p_num
    @current_life = 3
  end

end