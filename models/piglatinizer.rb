
class PigLatinizer
  attr_accessor :words


  def piglatinize(string)
    array = string.split("")
      if array[0] =~ /[aeiouAEIOU]/
        string + "way"
      else
        first_vowel = array.find_index { |e| e.match( /[aeiouAEIOU]/ ) } #returns the index of the first vowel
        first_chunk = array[0...first_vowel].join("") #This first_chunk will be a consonant cluster
        last_chunk = string.slice(first_vowel..-1)
        last_chunk + first_chunk + "a" + "y"
      end
    end


end #ends the class
