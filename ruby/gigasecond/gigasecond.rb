require 'time'

class Gigasecond
  VERSION = 1
  Gigasecond = 10**9
  def self.from(start_time)
#    Time.at(start_time.strftime('%s').to_i + Gigasecond).utc
#    Don't need to convert time object to a string then string to integer.
#    Time object .to_i gives time since epoc as a number
    Time.at(start_time.to_i + Gigasecond).utc
  end
end
