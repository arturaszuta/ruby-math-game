class Turn

  attr_reader :game_state, :active_turn
  
  def initialize
    @active_turn = ["Player 1", "Player 2"].sample
    @game_state = "live"
  end

  def switchTurn
    if @active_turn == "Player 1"
      @active_turn = "Player 2"
    else
      @active_turn = "Player 1"
    end
  end

  def gameOver
    @game_state = "over"
  end

end

