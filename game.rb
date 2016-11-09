require_relative 'turn'

class Game 

  attr_reader :current_player, :player_num

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1 #refers to one player at a time
    @player_num = 1
    @continue = true
  end

  def display
    puts "First player: #{@player1.name}"
    puts "Second player: #{@player2.name}"
    puts "current_player: #{@current_player.name}"
    puts "continue? #{@continue}"
  end

  def play
#     while no player at zero, loop
#     Keep track of current player
#     create a new turn - call Turn
#     if correct, report it, loop
#     if incorrect, decrement current player's lives
#     check if is zero
#       if zero - report and quit loop  
    while @continue
      turn = Turn.new(@current_player, @player_num)
      
      turn.hint

      turn.take_turn

      if turn.correct == true
        #stuff
        puts "Player #{@player_num} - #{@current_player.name}: Correct!"
      
      else
        # decrement the current player (how do I grab the current player?)
        # if current player has zero lives, set @continue = false
        puts "Player #{@player_num} - #{@current_player.name}: Nooooo! Wrong."

        current_player.decrement
        
      end

      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

      if @current_player.lives > 0
        
        if @current_player == @player1
          @current_player = @player2
          @player_num = 2
        else
          @current_player = @player1
          @player_num = 1
        end

        puts "----- NEW TURN -----"

      else
        
        @continue = false

        if @player_num == 1
          puts "Player 2 - #{@player2.name} wins with a score of #{@player2.lives}/3"
        else
          puts "Player 1 - #{@player1.name} wins with a score of #{@player1.lives}/3"
        end

        puts "----- GAME OVER -----"
      end
      
    end
    
  end

end

