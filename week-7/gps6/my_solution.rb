# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# It means that in order for this program to run properly it needs another page that is in the same directory.
#
require_relative 'state_data'

class VirusPredictor
  #Setting values to be used
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #Perform method that is being called with given arguments.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # This method calculates number of deaths by multiplying population by a decimal based on population density.
  # Bigger multiplier with greater population density.
  # Prints state with number of deaths from outbreak.
  def predicted_deaths    # predicted deaths is solely based on population density
    case @population_density
    when  @population_density >= 200 then rate = 0.4
    when @population_density >= 150 then rate = 0.3
    when @population_density >= 100 then rate = 0.2
    when @population_density >= 50 then rate = 0.1
    else
      rate = 0.05
    end
    number_of_deaths = (@population * rate).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Based on population density the speed will be determined
  # The bigger the denisty the faster the speed.
  # Will print statement where speed is valued as months.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    case @population_density

    when @population_density >= 200 then time = 0.5
    when @population_density >= 150 then time = 1
    when @population_density >= 100 then time = 1.5
    when @population_density >= 50 then time = 2
    else
      time = 2.5
    end

    puts " and will spread across the state in #{time} months.\n\n"

  end

end

#=======================================================================

# # DRIVER CODE
#  # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Key = state, value = { population_density: x, population: y }
#
STATE_DATA.each do |key, value|
  state_list = VirusPredictor.new(key, value[:population_density], value[:population])
state_list.virus_effects
end
#=======================================================================
# Reflection Section

=begin
- What are the differences between the two different hash syntaxes shown in the state_data file?

There is either hash rocket (=>) or hash symbol (:symbol).
With the rocket you can have the key be a string but it takes longer for it to be processed. With symbol it makes your key a symbol which can be accessed faster.

- What does require_relative do? How is it different from require?

  It makes it so there has to be a page that is in the same directory for the program to work. Were with require you have to specifically right the path to the file from the directory.

- What are some ways to iterate through a hash?

You can do the each method, each key, or each value to iterate through a hash. The each method by itself will run both the key and the value.

- When refactoring virus_effects, what stood out to you about the variables, if anything?

The arguments weren't needed by the methods since instance variables were being used.

- What concept did you most solidify in this challenge?

I blanked a little on how to access values from Hashes but once we talked about it, it was something simple that I forgot.

=end
