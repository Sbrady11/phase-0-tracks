# Virus Predictor

# I worked on this challenge [by myself, with: Lorraine].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# links to file needed
# require relative is subset of require - allows loading of files
#
require_relative 'state_data'

class VirusPredictor
# initializes a new instance of the class, sets up local/instance variables that are passed in as a parameter
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# returns combined virus output (predicted_deaths and speed_of_spread) from two methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# makes this next block of code inaccessible for outside objects
  private
# takes in population_density, population, & state, determines appropriate calculation, outputs state death totals
  def predicted_deaths
    # predicted deaths is solely based on population density

    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end

    number_of_deaths = (@population * multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# takes in population_density, & state, determines appropriate calculation, outputs speed of spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, population_hash|
 new_state = VirusPredictor.new(state, population_hash[:population_density], population_hash[:population])
 new_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# The hash for the state_data file uses both the hash rocket and the symbol method. The hash rocket is for readability, while the symbol is for simplicity.

# Require relative finds the file within the same folder, while require can take a longer address.

# You can use the .each, or the .map methods, both using a block code to iterate through each key and value.

# That they had already been defined as instance variables in the initialization of the new instance, so the further definition was redundant.

# I think I really got a better handle on instance variables.
