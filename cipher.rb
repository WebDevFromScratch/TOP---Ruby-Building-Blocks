
#-----------------

# 1. get the user input
# 2. store it
# 3. decode it (each letter +/- number)
# 4. print the output

#----------------

@letters = ('a'..'z').to_a #size = 26
@capital_letters = ('A'..'Z').to_a

puts "Write a message to decode!"
string = gets.chomp

puts ""

# changing the index of the letters from the input string

string = string.split(//) #turned into an array

string.each do |char|
  if !@letters.include?(char) && !@capital_letters.include?(char)
    print char
  elsif @capital_letters.include?(char)
    index = @capital_letters.index(char)
    index += 3
    index %= 26

    print @capital_letters[index]
  else
    index = @letters.index(char)
    index += 3
    index %= 26

    print @letters[index]
  end
end

puts ""

# check what about spaces (NoMethod for nil class) - SOLVED
# capital letters - SOLVED

