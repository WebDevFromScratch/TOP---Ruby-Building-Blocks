
#------------------------
# pick the lowest and the highest possible days
#   - BUY needs to be first (so first look for a good low entry)
#   - BUY can't be the last day (because there's nowhere to sell anymore)
# Note: this doesn't have to be lowest low and highest high; the difference needs to be the biggest
#------------------------

some_array = [9, 32, 1, 19, 28, 5, 13]

# extracting helper methods
def get_min_max(arr)
  @min_day = arr.min
  @max_day = arr.max
end

def calculate_best(arr)
  get_min_max(arr)

  if arr.index(@min_day) > arr.index(@max_day)
    arr.delete_at(arr.index(@min_day))
    calculate_best(arr)
  end
end

def stock_picker(days)
  # change to another var so we can work on it
  # so that they don't point to the same thing
  modified_days = Array.new
  days.each do |val|
    modified_days << val
  end

  calculate_best(modified_days)

  difference = @max_day - @min_day
  puts "Best day to buy is #{days.index(@min_day)}, to sell is #{days.index(@max_day)}."
  puts "This would make you $#{difference}."
  
  p days
  p modified_days
end

stock_picker(some_array)
