class Complement
  VERSION = 3
  def self.of_dna(dna)
    raise ArgumentError unless dna.is_a? String
#   Saw someone use hash, seems better than hackish letter check below
    complements = {G: "C", C: "G", T: "A", A: "U"}
#    raise ArgumentError unless
    dna.each_char.map { |x|
        raise ArgumentError unless complements.has_key?(x.to_sym)
        complements[x.to_sym]
      }.join
#    Original regex implementation
#    raise ArgumentError unless (dna+"ACGT").chars.uniq.sort.join == "ACGT"
#    dna.gsub(/[GCTA]/, "G" => "C", "C" => "G", "T" => "A", "A" => "U" )
  end
end
