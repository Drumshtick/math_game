class Turn

  @@num_turns = 0

  attr_reader :current_player, :q

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
    q.create_query_string
  end

  def correct_answer(guess)
    if (guess == q.answer)
      return true
    end
    return false
  end

  def new_turn
    "❗❗❗❗❗❗❗❗ NEW TURN ❗❗❗❗❗❗❗❗"
  end
end
