# Solution 1

alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

def convert_to_array_downcase(str)
   str.split('').map {|char| char.downcase}
end

def caesar_cipher(str, num, array)
  downcase_array = convert_to_array_downcase(str)

  new_array = downcase_array.map do |char|
    if(array.include?(char))
      char = array[(array.index(char) + num) % 26]
    else
      char
    end
  end
  new_array.join('')
end

puts caesar_cipher("Hello!", 3, alphabet) # khoor!
puts caesar_cipher("Maisy", 5, alphabet) # rfnxd
