katz_deli = []

def line(array)
  queue = "The line is currently:"
  if array.length == 0
    queue = "The line is currently empty."
  elsif array.length >= 1
    array.each_with_index { |x,i| queue += " #{i+1}. #{x}"}
  end
  puts queue
end

def take_a_number(array, string)
  array << string
  puts "Welcome, #{string}. You are number #{array.size} in line."
end

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.shift}."
  end
end
