class Turn
  # Called a class variable
  @@num_turns = 0
  attr_reader :current_player

  def initialize
    @@num_turns += 1
    @current_player = Turn.set_turn
    @q = Question.new
  end

  def self.set_turn
    if (@@num_turns.odd?)
      return "p1"
    else
      return "p2"
    end
  end

  def ask_question
    @q.create_query_string
  end

  def is_correct(guess)
    @q.correct(guess)
  end

  def new_turn
    "❗❗❗❗❗❗❗❗ NEW TURN ❗❗❗❗❗❗❗❗"
  end
end
