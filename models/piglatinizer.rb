
class PigLatinizer
  attr_accessor :words


  def piglatinize(string)
    array = string.split("")
    isolated_first_element = array[0]
      if array[0] =~ /[aioAIO]/
        array.shift
        array << isolated_first_element
        array << "w"
        array << "a"
        array << "y"
        array.join
      elsif array[0] =~ /[uU]/ || array[0] =~ /[eE]/
        string + "way"
      else
        first_vowel = array.find_index { |e| e.match( /[aeiouAEIOU]/ ) } #returns the index of the first vowel
        first_chunk = array[0...first_vowel].join("") #This first_chunk will be a consonant cluster
        last_chunk = string.slice(first_vowel..-1)
        last_chunk + first_chunk + "a" + "y"
      end
    end


end #ends the class
