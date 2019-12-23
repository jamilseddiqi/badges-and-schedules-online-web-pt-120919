def badge_maker(speaker)
    return  "Hello, my name is #{speaker}."
end

def batch_badge_creator(names)
  new_array = []
  names.each do |speaker|
    new_array.push(badge_maker(speaker)) # The argument "speaker" in this method that we invoked from the method 1 should be extracted from the argument of the method from our current method which, in this case, is new_array.push(badge_maker(speaker))
  end
  new_array
end
new messages
def batch_badge_creator(names)
  names.map do |speaker|
    badge_maker(speaker)
  end
end

def assign_rooms(names)
  names.map.with_index do |speaker, index|
    "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
  end
end
def printer(speaker)
  batch_badge_creator(speaker).each do |attendee|
    puts attendee
  end
  assign_rooms(speaker).each do |attendee|
    puts attendee
  end
end
