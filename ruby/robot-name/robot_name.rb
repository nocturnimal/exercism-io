class Robot
  VERSION = 1

  require 'set'
  ALPHABET = ("A".."Z").to_a
  NUMBERS = (0..9).to_a

  @@robot_inventory = Set.new

  def initialize
    @robot_name = generate_name
  end

  def name
    return @robot_name
  end

  def reset
    # Perhaps just call initialize
    @robot_name = generate_name
    # Instructions do not specify if the robot should have no name between
    # a reset and being asked for its (new) name. "The robot has no name." :)
  end

  private

  def generate_name
    name = ""
    # The loop will use this variable, allowing us to access the
    # successfully generated name from outside the loop block.
    loop do
      name = random_name
      break unless @@robot_inventory.add?(name).nil?
      # Set will add the name & return self, or return nil if already present
    end
    name
  end

  def random_name
    #   NAME_REGEXP = /^[A-Z]{2}\d{3}$/
    (2.times.collect { random_letter } + 3.times.collect { random_number.to_s }).join
  end

  def random_letter
    ALPHABET.sample
  end

  def random_number
    NUMBERS.sample
  end

end
