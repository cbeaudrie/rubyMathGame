# 2 players, start with 3 lives
# lose a life if they mis-answer a question
# if an answer is wrong, output the new scores for both players
# Game ends when one player gets to zero. Announce who won and what the winner's score is

# main.rb
# 
# 
# 
# Game
# variables:
#   player1
#   player2
#   current_player
#   
# methods:
#   
#   play
#     create 2 players with 3 lives
#     while no player at zero, loop
#     Keep track of current player
#     create a new turn - call Turn
#     if correct, report it, loop
#     if incorrect, decrement current player's lives
#     check if is zero
#       if zero - report and quit loop
# 
# 
# Player
#   name
#   lives
#   
#   method: decrement
# 
# 
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
#       
# 
# 
# FLOW
# Start game
# create 2 players with 3 lives
# while no player at zero, loop
#   Keep track of current player
#   create a new turn
#       2 random numbers, solution
#       pose question
#       prompt for answer
#       evaluate correct - true/false
#       return
#     if correct, report it, loop
#     if incorrect, decrement current player's lives
#     check if is zero
#       if zero - report and quit loop
# 










# CLASSES
# 
# Player
#   name
#   lives
#   XXXXX method: correct_answer (increment lives)
#   method: incorrect_answer (decrement lives)

# Question
#   Choose two numbers (1-20), generate a question and expected answer
#   Each instance of question is a new question with randomly generated numbers (and a randomly generated operator?) and the correct answer. 

# Game
#   
#   Create 2 players as properties
#   player1 = Player.new
#   player2 = Player.new
#   
#   Handles dispatching - stores 2 players as variables
#   
#   keep track of current player
#   Call new Turn
#   Decrement current player lives based on result
#   if current player has zero lives
#     report it, quit
#   If none have zero lives:  
#     Report result e.g. P1: 2/3 vs P2: 3/3
#     loop
#     ** NOTE you don't GAIN a life if you get a right answer **

# Turn
#   Keeps track of the turn (increment count?) 
#   calls for a question
#   takes an answer
#   evaluates answer against correct answer
#   returns whether answered correctly or not

# main.rb
#    runs the game (loops until one player has no lives)
# 
# Calls all classes
# 
# new_game = Game.new (player1,  player 2)
# 
# 
# 
# FEEDBACK
# Could have question/turn in one
# 

  
class Question
  # generate two random numbers
  # generate a solution
  # pass all of these back?
end

class Player

end

class Turn

end

class Game

end



