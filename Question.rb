class Question

  attr_reader :num1, :num2

  def initialize
    @num1 = rand 21
    @num2 = rand 21
    @answer = @num1 + @num2
  end

  def create_query_string
    "What does #{num1} + #{num2} equal❓❓❓❓:  "
  end

  def correct(answer)
    if (answer.to_i == @answer) 
      return true
    else
      false
    end
  end

end
