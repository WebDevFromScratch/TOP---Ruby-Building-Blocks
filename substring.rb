
my_dictionary = ["below","down","go","going","horn","how","howdy","it","i",
              "low","own","part","partner","sit"]
my_string = "Somestuffsitit be lowhowhowdytititii"

def substrings(string, dictionary)
  substrings_hash = Hash.new(0)

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

  p substrings_hash
end

substrings(my_string, my_dictionary)
