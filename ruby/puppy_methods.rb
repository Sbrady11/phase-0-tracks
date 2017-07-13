
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

fluffy = Puppy.new
fluffy.fetch('stick')