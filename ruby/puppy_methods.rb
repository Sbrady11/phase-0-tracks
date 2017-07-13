
class Puppy

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




end

fluffy = Puppy.new
fluffy.fetch('stick')

fluffy.speak(3)
fluffy.roll_over
	