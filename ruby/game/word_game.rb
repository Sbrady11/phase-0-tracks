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
	attr_reader :guess_count
	attr_accessor :hidden_word, :character_to_check, :secret_word, :guess_array

	def initialize
		@guess_count = 0
		@available_guesses = nil
		@hidden_word = nil
		@word = nil
		@character_to_check = character_to_check
		@guess_array = []
		puts "Starting game..."
	end

	def word_intake(original_word)
		@word = original_word.downcase
	end

	def guesses
		@available_guesses = 2*@word.length - @guess_count
	end

	def hide(word_to_hide)
		@hidden_word = p '_' * word_to_hide.length
	end

	def checker(character)
		if @guess_array.include?(character)
			puts "Choose a new character, you already chose that one!"
			@guess_count - 1
		end

		if @word.include?(character)
			@word.split('').each do |split_character|
				if split_character == character
					puts 'true'
					guess_array << character
					puts @word.index(split_character)
					@hidden_word[@word.index(character)] = split_character
					@guess_count += 1
				end
			end
		else
			puts "nope, try again!"
			
			@guess_count += 1

		end
		
		puts @hidden_word
	
	end

	def start
		puts "Enter word to hide!"
		word_intake(gets.chomp)

		hide(@word)
		while guesses != 0
			puts "You have #{guesses} guesses remaining! Enter a character to check"
			checker(gets.chomp)

			if @word == @hidden_word
				puts "Victory!"
			break
			end
		end

		if guesses == 0
			puts "Sorry, you killed the little stick man!"
		end
	end

end

game = WordGame.new

game.start
