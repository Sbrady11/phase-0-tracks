class Santa
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
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

    def age
    	@age
    end

    def ethnicity
    	@ethnicity
    end
end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
santas[1].get_mad_at("Dancer")
