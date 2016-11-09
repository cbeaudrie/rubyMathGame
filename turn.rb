require_relative 'game'

class Turn

attr_reader :current_player, :number1, :number2, :solution, :correct

  def initialize (current_player, player_num)
    @number1 = 1 + rand(20)
    @number2 = 1 + rand(20)
    @solution = @number1 + @number2
    @correct = true
    @current_player = current_player
    @player_num = player_num
  end

  def hint
    puts "HINT... #{@solution}"
  end

  def take_turn

    puts "Player #{@player_num} - #{@current_player.name}: What does #{@number1} plus #{@number2} equal?" 

    guess = gets.chomp.to_i

    if guess == @solution
      @correct = true
    else
      @correct = false
    end

  end


end

