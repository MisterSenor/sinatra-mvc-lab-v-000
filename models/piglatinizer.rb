
class PigLatinizer
  attr_accessor :words


  def piglatinize(string)
    array = string.split(" ")
    if array.count == 1
      isolated_first_element = array[0]
        if array[0] =~ /[aioAIO]/
          #this won't work unless you further split the array into its component string parts
          array.shift
          array << isolated_first_element
          array << "w"
          array << "a"
          array << "y"
          array.join
        elsif array[0] =~ /[uU]/
          string + "way"
        elsif array[0] =~ /[eE]/
    #elsif string.slice 
          string + "way"
        else
          first_vowel = array.find_index { |e| e.match( /[aeiouAEIOU]/ ) } #returns the index of the first vowel
          first_chunk = array[0...first_vowel].join("")
          last_chunk = string.slice(first_vowel..-1)
          last_chunk + first_chunk + "a" + "y"
        end
      end 
    else 
      array[0..-1].slice
    end


end
