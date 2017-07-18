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
	attr_accessor :hidden_word, :character_to_check, :secret_word

	def initialize
		@is_over = false
		@guess_count = 0
		@secret_word = secret_word
		@character_to_check = character_to_check
		puts "Starting game..."
	end

	def hide(word_to_hide)
		@hidden_word = p ' _ ' * word_to_hide.length	
		@hidden_word
	end

	def checker(character)
	end

end

game = WordGame.new

puts "Enter word to hide!"
secret_word = gets.chomp

game.hide(secret_word)
puts "You have #{secret_word.length} guesses remaining! Enter a character to check, or enter 'guess' to guess the secret word!"
character_to_check = gets.chomp.downcase
	# if character_to_check == 'guess'

	# elsif character_to_check.length > 1
	# 	puts "Please just a letter to check at first!"
	# 	character_to_check = gets.chomp

game.checker(character_to_check)



# hidden_word = p ' _ ' * secret_word.length	

# puts hidden_word

# puts hidden_word[1]


# puts secret_word[1]

# hidden_word[1] = 's'

# puts hidden_word
