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

	def check_hands(player_hand, computer_hand)
		case [player_hand, computer_hand]
		when ['rock', 'scissors'], ['scissors', 'paper'], ['paper', 'rock']
			puts "A winrar is you, GAME OGRE"
			@is_over = true
		when ['scissors', 'rock'], ['paper', 'scissors'], ['rock', 'paper']
			puts "You Lose! GAME OGRE"
			@is_over = true
		when player_hand == computer_hand
			puts "A tie?! Damned computers...."
		end
	end
end

game = Game.new

while !game.is_over
	computer_hand = game.generate_computer_hand
  
  puts "enter your hand! ('rock', 'paper', or 'scissors')"
  player_hand = gets.chomp
	
  game.check_hands(player_hand, computer_hand)
end

puts "Computer threw a #{computer_hand}"





