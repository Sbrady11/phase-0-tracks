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
	attr_accessor :hidden_word, :guess_array

	def initialize (word)
		@word = word.downcase
		@guess_count = @word.length * 2
		@hidden_word = '_' * @word.length
		@guess_array = []
	end

	def character_is_valid?(character)
		character.length > 1
	end

	def checker(character)
   		if character_is_valid?(character)
    		puts "Just one letter please!"

    	elsif @guess_array.include?(character)
			puts "Choose a new character, you already chose that one!"

		elsif @word.include?(character)
			@word.split('').each_with_index do |split_character, index|

				if split_character == character
					@hidden_word[index] = split_character
				end

			end
			@guess_count -= 1

			@guess_array << character

		else
			puts "Nope, try again! You're friend is closer to death!!"
			
			@guess_count -= 1
		end
		
		puts @hidden_word
	end

	def game_over?
		solved? || @guess_count == 0
	end

	def solved?
		@word == @hidden_word
	end


	def play
		until game_over?
			puts "You have #{@guess_count} guesses remaining! Enter a character to check"
			checker(gets.chomp)
		end

		if solved?
			puts "Victory!"
		else
			puts "Sorry, you killed the little stick man!"
		end

	end

end

def interface
	puts "Player one, enter a word to hide!"
	game = WordGame.new(gets.chomp)

	game.play
end

interface
