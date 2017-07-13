
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



end

fluffy = Puppy.new
fluffy.fetch('stick')

fluffy.speak(3)

	