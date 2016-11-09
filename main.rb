require_relative 'game'
require_relative 'player'
require_relative 'turn'

player1 = Player.new('Jimmy')
player2 = Player.new('Suzie')

game = Game.new(player1, player2)

# game.play

# game.display
game.play


