class Hamming
VERSION = 1
  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
        raise ArgumentError
    else
#     .chars looks cleaner than split("")
      strand1 = strand1.chars
      strand2 = strand2.chars
#     rikki comment suggested checking enumerable methods 
      zipped_strands = strand1.zip(strand2)
#     count { |item| block } → int
#     If a block is given, counts the number of elements
#     for which the block returns a true value.
      zipped_strands.count { |x, y| x != y }
    end
  end
end
