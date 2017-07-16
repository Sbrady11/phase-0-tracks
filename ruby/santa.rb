class Santa
	attr_reader :age
	attr_accessor :ethnicity

	def initialize(gender, ethnicity, age)
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def celebrate_birthday
		@age += 1
	end

  	def get_mad_at(reindeer_name)
    i = 0
    removed_reindeer = nil
      while removed_reindeer != @reindeer_ranking[i]
        if @reindeer_ranking[i] == reindeer_name
          removed_reindeer = @reindeer_ranking.delete_at(i)
          @reindeer_ranking << removed_reindeer
          return @reindeer_ranking
        end
          i += 1
      end
    end

end

def santa_builder_5000
	puts "# of Santas to build?"
	santas = gets.chomp.to_i

	santa_array = []

	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	
	santas.times {
		santa_array << Santa.new(example_genders.sample, example_ethnicities.sample, [*0..140].sample)
	} 
	return santa_array
end

santa_builder_5000


# santas[1].get_mad_at("Dancer")

# puts santas[1].age

# puts santas[1].ethnicity

# puts santas[1].ethnicity = "Celtic"

# puts santas[1].ethnicity


