# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + " :D"
#   end
# end

# puts Shout.yell_angrily("I hate mondays")

# puts Shout.yelling_happily("I love coding")

module Shout
	def shout(words)
		puts words.upcase
	end
end

class Police
	include Shout
end

class Coach
	include Shout
end

gary = Police.new
puts gary.shout("You're under arrest")

larry = Coach.new
puts larry.shout("Touchdown")