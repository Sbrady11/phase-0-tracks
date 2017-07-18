# Word Game Pseudo-Code

# Take in a secret word
# Initialize the guess count
# 	Maximum guesses equals string length
# Hide the word from player 2
# 	Split the word, take the .length of the word, print '_' characters in the stead of each hidden letter
# Player enters a character
# Computer checks character against secret word string
# If the character appears, the appropriate '_' is replaced with the character at the correct index
# 	Repeated characters do not count against the player
# Else
# 	The guess count increases by one
# Repeat until the word is chosen or the player runs out of guesses
# Word will be revealed regardless
# Much fun will be had
class WordGame
	attr_reader :guess_count, :is_over
	attr_accessor :hidden_word, :character_to_check, :secret_word, :guess_array

	def initialize
		@is_over = false
		@guess_count = 0
		@hidden_word = hidden_word
		@word = nil
		@character_to_check = character_to_check
		@guess_array = []
		puts "Starting game..."
	end

	def word_intake(original_word)
		@word = original_word.downcase
	end

	def hide(word_to_hide)
		hidden_word = p ' _ ' * word_to_hide.length	
		hidden_word
	end

	def checker(character)
		secret_word.each do |char|
			if char == character
				@guess_array << character_to_check
				hidden_word.gsub(character)
				@guess_count += 1
			else secret_word
			end
		@guess_count += 1
		end
	end

	def start
		puts "Enter word to hide!"
		game.word_intake(gets.chomp)


		game.hide(word_intake)
		puts "You have #{word_intake.length} guesses remaining! Enter a character to check, or enter 'guess' to guess the secret word!"
	end


end


game = WordGame.new

game.start

	# if character_to_check == 'guess'

	# elsif character_to_check.length > 1
	# 	puts "Please just a letter to check at first!"
	# 	character_to_check = gets.chomp








# hidden_word = p ' _ ' * secret_word.length	

# puts hidden_word

# puts hidden_word[1]


# puts secret_word[1]

# hidden_word[1] = 's'

# puts hidden_word
