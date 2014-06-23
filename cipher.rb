
#-----------------

# 1. get the user input
# 2. store it
# 3. decode it (each letter +/- number)
# 4. print the output

#----------------

@letters = ('a'..'z').to_a #size = 26
@capital_letters = ('A'..'Z').to_a

def caesar_cipher
  puts "Write a message to decode!"
  string = gets.chomp
  puts "What should the shift be?"
  shift = gets.chomp.to_i

  string = string.split(//) #turned into an array

  string.each do |char|
    if !@letters.include?(char) && !@capital_letters.include?(char)
      print char
    elsif @capital_letters.include?(char)
      index = @capital_letters.index(char)
      index += shift
      index %= @capital_letters.size

      print @capital_letters[index]
    else
      index = @letters.index(char)
      index += shift
      index %= @letters.size

      print @letters[index]
    end
  end
end

caesar_cipher

puts ""

# check what about spaces (NoMethod for nil class) - SOLVED
# capital letters - SOLVED

