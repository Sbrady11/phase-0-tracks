class Game
	attr_accessor :player_hand, :computer_hand

	def initialize
		@player_hand = player_hand
		@computer_hand = computer_hand
		@roshambo_options = ['rock', 'paper', 'scissors']
		@is_over = false
	end

	def generate_computer_hand
		computer_hand = @roshambo_options.sample
	end
end



game = Game.new

game.generate_computer_hand
