#Not using Prime.prime_division
class Raindrops
  VERSION = 1
  def self.convert(number)
    raindrops = [[3,"Pling"], [5, "Plang"], [7, "Plong"]]
    sound = raindrops.each.map {|x| number % x[0] == 0 ? x[1] : nil }.join
    sound.empty? ? number.to_s : sound
  end
end
