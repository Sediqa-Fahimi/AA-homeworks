class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if @game_over != true
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    p "Enter the sequence one color at a time:"
    user_input = gets.chomp.split(" ")
    @game_over = true if @seq != user_input
  end

  def add_random_color
    @seq << COLORS.sample
    p @seq
  end

  def round_success_message
    p "---- round completed ------"
  end

  def game_over_message
    p "---- Game Over -----"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
# simon = Simon.new
# simon.play
