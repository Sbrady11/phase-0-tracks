#Take in names
#Split the names in order to reverse them
#Rejoin them to be able to split them into characters
#iterate through the new array
#If its a vowel, replace with the 'next vowel', (i.e. a => e, e => i, etc..) 
#If its a consonant, replace the letter with the next letter in order as well.
#Store user information into the spy_hash
#Receive more spy information
#Print out spy_hash when the program is terminated

def letter_changer(user_name)
  
    original_name = user_name
    reversed_name = user_name.split(' ').reverse.join(' ')
    reversed_split_name = reversed_name.split('')
    
    spy_name = []
    new_name = []
   reversed_split_name.each do |letter|
        case letter.downcase
            when ' '
                new_name << ' '
            when 'a'
                new_name << 'e'
            when 'e'
                new_name << 'i'
            when 'i'
                new_name << 'o'
            when 'o'
                new_name << 'u'
            when 'u', 'z'
                new_name << 'a'
            else
                new_name << letter.next
        end
    end
  spy_name << new_name

return spy_name.join

end

@@spy_hash = {}

def spy_hash_collection(user_name)
   @@spy_hash[user_name] = letter_changer(user_name)
end

def ui
    puts "Greetings Agent, what is your name?"
    user_name = gets.chomp
    
    puts "You are no longer #{user_name}, your new name is #{letter_changer(user_name)}"
    
    spy_hash_collection(user_name)

    
    puts "Run new agent? ('y'/'n')"
    user_answer = gets.chomp

    if user_answer === ('y')
        ui()
    else
      puts "*************************RESULTS*************************"
        @@spy_hash.each do |user_name, spy_name|
            puts "#{user_name}'s spy name: #{spy_name}"
    end
  end
end

ui