# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<swapcase>
# => “InVeStIgAtIoN”

# "zom".<insert(1,"o">
# => “zoom”

# "enhance".center("enhance".length + 8, " ")
# => "    enhance    "

# "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".concat(" suspects")
#=> "the usual suspects"

# " suspects".insert("the usual')
# => "the usual suspects"

# "The case of the disappearing last letter".pop
# => "The case of the disappearing last lette"
puts "The case of the disappearing last letter".chop 

# "The mystery of the missing first letter".<???> (This one i need help with, is there a singular method? could we .reverse, then delete the last character, then reverse it back?)
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".split.join("  ")
# => "Elementary, my dear Watson!"
puts "Elementary,    my   dear        Watson!".split.join("  ")

# "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the ASCII code for the letter 'z'
puts "z".ord
# "How many times does the letter 'a' appear in this string?".count('a')
# => 4