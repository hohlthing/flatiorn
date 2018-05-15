def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a,b|
    b <=> a
  end
end

def sort_array_char_count(array)
  array.sort do |a,b|
    a.length <=> b.length
  end
end

def swap_elements(array)
  temp = array[2]
  array[2] = array[1]
  array[1] = temp
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each { |x| x[2] = "$"}
end

def find_a(array)
  array.select { |x| x[0] == "a"}
end

def sum_array(array)
  sum = 0
  array.each { |x| sum += x }
  sum
end

def add_s(array)
  array.each do |x|
    if x != array[1]
      x << "s"
    end
  end
end
