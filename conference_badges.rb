# Write your code here.
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    new_array = []
    array.each do |name|
        new_array.push(badge_maker(name))
    end
    return new_array
end

def assign_rooms(array)
    room_number = 1
    array.each do |speaker|
        array[room_number - 1] = "Hello, #{speaker}! You'll be assigned to room #{room_number}!"
        room_number += 1
    end
end

def printer(array)
    batch_badge_creator(array).each do |name|
        puts "#{name}"
    end
    assign_rooms(array).each do |room|
        puts "#{room}"
    end
end