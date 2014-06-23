
my_dictionary = ["below","down","go","going","horn","how","howdy","it","i",
              "low","own","part","partner","sit"]

puts "Please enter text to check with our dictionary:"
my_string = gets.chomp

def substrings(string, dictionary)
  substrings_hash = Hash.new(0)
  string.downcase! #to catch capital letters

  dictionary.each do |word|
    #new_string = string #how to make them not being the same var?
    new_string = String.new(string) #this works perfectly!
    while new_string.include? word
      substrings_hash[word] += 1      
      new_string.slice! word
    end
  end

  #sorting by occurence (additional feature)
  substrings_hash = substrings_hash.sort_by { |key, value| value }.reverse

  puts ""
  puts "These words from our dictionary occur in your text:"
  p substrings_hash
end

substrings(my_string, my_dictionary)
