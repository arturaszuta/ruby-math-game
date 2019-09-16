class Lives

  attr_reader :lives

  def initialize
    @lives = 3
  end

  def subtractLive
    @lives -= 1
  end
end
