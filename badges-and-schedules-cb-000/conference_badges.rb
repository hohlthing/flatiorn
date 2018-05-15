def batch_badge_creator(names)
  new_badges = []
  names.each { |x| new_badges << badge_maker(x) }
  new_badges
end

def badge_maker(name)
  "Hello, my name is #{name}."
end

def assign_rooms(speakers)
  room_assignments = []
  speakers.each_with_index { |s, i| room_assignments << "Hello, #{s}! You'll be assigned to room #{i + 1}!"}
  room_assignments
end

def printer(names)
  batch_badge_creator(names).each { |x| puts x }
  assign_rooms(names).each { |x| puts x }
end
