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

    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    puts "Please input the sequence you just saw one color at a time"
    answer = gets.chomp

    @seq.each do |color|
      if color != answer
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Correct"
    puts "Here's the next sequence:"
  end

  def game_over_message
    puts "Game over! You made it #{ @sequence_length - 1 } rounds!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end


# The specs should guide you as to what each method does.
# One important thing to note is that it is generally impractical to test
# console user input, so the specs dont test require_sequence.
# The goal of require_sequence is to prompt the user to repeat back the
# new sequence that was just shown to them, one color at a time. If
# they give an incorrect color, it should immediately set @game_over to be true.
