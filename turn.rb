# Turn
#   number1
#   number2
#   solution
#   
#   methods:
#     generate_question
#       2 random numbers, solution
#       
#     pose_question
#       present question
#       prompt for solution
#       
#     check_solution
#       evaluate correct - true/false
#   
#     take_turn
#       generate_question
#       pose_question
#       check_solution
#       return

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

  def display
    # puts "@number1 #{@number1}"
    # puts "@number2 #{@number2}"
    puts "HINT... #{@solution}"
  end

  def take_turn

    # ADD 'P1 - ' OR 'P2 - ' IN FRONT OF THESE PROMPTS!
    
    puts "Player #{@player_num} - #{@current_player.name}: What does #{@number1} plus #{@number2} equal?" # How do I show which player is the current player?
    guess = gets.chomp.to_i
    #gets.chomp.to_i

    if guess == @solution
      # puts "Nice guess"
      @correct = true
    else
      # puts "loser"
      @correct = false
    end

  end


end

