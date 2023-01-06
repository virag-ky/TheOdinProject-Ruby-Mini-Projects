dictionary = ["hello", "go", "to", "language", "learn", "many", 
  "programming", "computer", "code", "programming", "computer", "language", "language"]

def substrings(str, array)
  new_array = str.split(' ')
  new_hash = {}
  new_array.each do |string|
    string.gsub!(/[,.?!;:'"`]/, '')
    new_hash[string] = array.count(string.downcase)
  end
  new_hash
end

puts substrings("computer", dictionary)
# {"computer" => 2}

puts substrings("Hello, go and learn a programming language.", dictionary)
# {"Hello" => 1, "go" => 1, "and" => 0, "learn" => 1, "a" => 0, "programming" => 2, "language" => 3}
