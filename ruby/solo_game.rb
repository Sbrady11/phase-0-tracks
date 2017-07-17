class Game
	attr_accessor :player_hand, :computer_hand, :is_over

	def initialize
		@player_hand = player_hand
		@computer_hand = computer_hand
		@roshambo_options = ['rock', 'paper', 'scissors']
		@is_over = false
	end

	def generate_computer_hand
		computer_hand = @roshambo_options.sample
	end

	def check_hands(computer_hand)
		case [player_hand, computer_hand]
		when ['rock', 'scissors'], ['scissors', 'paper']
			puts "you win!"
			@is_over = true
		when ['scissors', 'rock'], ['paper', 'scissors']
			puts "Whoops, you lose, again?"
			@is_over = true
		when player_hand == computer_hand
			puts "Tie!"
		end
end



game = Game.new

game.generate_computer_hand
