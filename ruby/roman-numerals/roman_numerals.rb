
class Fixnum
  VERSION = 1
  def to_roman
    numerals = {
      "1" =>  ["I", "X", "C", "M"],
      "2" =>  ["II", "XX", "CC", "MM"],
      "3" =>  ["III", "XXX", "CCC", "MMM"],
      "4" =>  ["IV", "XL", "CD"],
      "5" =>  ["V", "L", "D"],
      "6" =>  ["VI", "LX", "DC"],
      "7" =>  ["VII", "LXX", "DCC"],
      "8" =>  ["VIII", "LXXX", "DCCC"],
      "9" =>  ["IX", "XC", "CM"],
      "0" =>  [""] # No zero
      # Referenced page on roman numerals did not describe 4k & above
    }
    returned_roman = []
    self.to_s.chars.reverse.each_with_index { |digit, index|
    # Reversing allows the index position of the number
    # to act as index position of hashed array
    # 27 becomes ["7", "2"]
    # ["7", "2"] becomes ["VII", "XX"]
      returned_roman.push(numerals[digit][index])
    }
    # Bescause the array is built backwards, it needs to be reversed
    # ["VII", "XX"] becomes "XXVII"
    returned_roman.reverse.join
  end
end
