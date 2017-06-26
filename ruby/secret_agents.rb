# Opening interface asks user if they want to decrypt or encrypt
# User inputs their string for coding or decoding
# Encryption initializes a counter for the index number, advances accross the string, and uses the .next function to increment the current letter, and adds it to a created empty string.
# The program checks for instances of "aa" then replaces them with the appropriate character, "z"
# decryption initializes a counter for the index number, and similarly advances accross the string
# Using the given alphabet string, the decryption function finds the given letters position on the alphabet, decrements the new index counter, finds the new letter at the new position, and pushes it to a new decrypted string

# The nested call should work since the argument is merely calling for the program to execute another function in order to provide the data required to finish the desired 'forwards backwards' function.

def intro()
puts "Greetings Agent. Encryption or decryption today? (e/d)"
	confirm = gets.chomp
	if confirm == "e"
		puts "enter string for encryption"
		input = gets.chomp
		puts "#{input} encrypted: #{encryption(input)}" 
	elsif confirm == "d"
		puts "enter string for decryption"
		input = gets.chomp
		puts "#{input} decrypted: #{decryption(input)}"
	else
	  puts "confirmed for decryption decryption protocol, 'swordfish'"
	  puts "de-encrypt complete: #{decryption(encryption("swordfish"))}"
	end
end

def encryption(string)
	
	i = 0

	encrypted_str= (" ")
	
	while i < string.length
	  string[i].next
	  encrypted_str += string[i].next
		i += 1
	end

	if encrypted_str["aa"]
 		 encrypted_str.gsub! 'aa', 'a'
	end
  return encrypted_str
end
def decryption(string)
	
	i = 0
	
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	decrypted_str = (" ")

	while (i < string.length)
  		decrypted_letter_index = (alphabet.index(string[i]) - 1)
  		decrypted_str += alphabet[decrypted_letter_index]
 		i += 1
  	end
  return decrypted_str
 end
intro()