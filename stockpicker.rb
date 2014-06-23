
array = [11, 32, 122, 19, 23, 5, 54]

puts "Prices of a stock in time: #{array}"
puts ""

def stock_picker(some_array)
  diff_array = Array.new
  diff_hash = Hash.new

  some_array.each do |num|
    unless some_array[some_array.index(num) + 1] == nil
      x = 1
      until some_array[some_array.index(num) + x] == nil
        diff = some_array[some_array.index(num) + x] - num
        diff_array << diff
        diff_hash[diff] = [some_array.index(num), some_array.index(num) + x]
        x += 1
      end
    end
  end

  # get the biggest difference and print the correct statement (corrected so that days starts at 1)
  puts "Best day to buy is #{diff_hash[diff_array.max][0] + 1} and to sell is #{diff_hash[diff_array.max][1] + 1}."
  puts "This would make you $#{diff_array.max}."
end

stock_picker(array)

