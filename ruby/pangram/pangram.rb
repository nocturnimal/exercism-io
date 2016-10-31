# Determine if a sentence is a pangram.
#
# Determine if a sentence is a pangram. A pangram (Greek: παν γράμμα, pan gramma,
# "every letter") is a sentence using every letter of the alphabet at least once.
# The best known English pangram is "The quick brown fox jumps over the lazy dog."

class Pangram
  VERSION = 1
  ALPHABET = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", \
    "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  def self.is_pangram?(sentence)
    # sentence.downcase.delete(" ").chars.sort.uniq!
    # Above was misread. Not each letter once, instead includes each letter
    sentences_union =  ALPHABET & sentence.downcase.chars
    # Set Intersection — Returns a new array containing elements common to
    # the two arrays, excluding any duplicates. The order is preserved from
    # the original array.
    sentences_union == ALPHABET ? true : false
  end
end
