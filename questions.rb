class Questions

  attr_reader :qString, :answer

  @@questions = ['add', 'subtract', 'multiply', 'divide']
  
  def initialize
    @n1 = rand(1...20)
    @n2 = rand(1...20)
    @selectedQ = @@questions.sample
    case @selectedQ
      when 'add'
        @answer = (@n1 + @n2)
        @qString = "What is #{@n1} plus #{@n2}?"
      when 'subtract'
        @answer = @n1 - @n2
        @qString = "What is #{@n1} minus #{@n2}?"
      when 'multiply'
        @answer = @n1 * @n2
        @qString = "What is #{@n1} times #{@n2}?"
      when 'divide'
        @answer = @n1 / @n2
        @qString = "What is #{@n1} divided by #{@n2}?"
      end
  end
  
end



