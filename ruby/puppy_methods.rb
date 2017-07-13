class Puppy
  
  def initialize
  	puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	int.times{ 
  		puts "Woof!"
  	}
  end

  def roll_over
  	puts "*rolls over*"
  end 

  def dog_years(int)
  	int*9
  end

  def whimper
   puts "*whimpers*"
  end

end

# fluffy = Puppy.new
# fluffy.fetch('stick')

# fluffy.speak(3)
# fluffy.roll_over

# puts fluffy.dog_years(3)

# fluffy.whimper

class Gymnast

	def initialize
		puts "Initializing..."
	end

	def flip
		puts "Flipping"
	end

	def jump
		puts "Jumping"
	end


end
gymnasts = []

50.times { 
	gymnasts << Gymnast.new
}

