# tracks player number for turn order
# tracks life ("score")
class Player

  attr_accessor :player_number, :current_life
  attr_reader :name, :total_life

  def initialize(p_num, n)
    @name = n
    @player_number = p_num
    @total_life = 3
    @current_life = 3
  end

end