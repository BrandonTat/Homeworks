tiles_array = ["up", "right-up", "right", "right-down",
               "down", "left-down", "left", "left-up" ]

def slow_dance(direction, array)
  array.each_with_index do |dir, tentacle|
    return tentacle if dir == direction
  end
end

# Testing slow dance
p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)
