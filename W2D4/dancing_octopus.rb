tiles_array = ["up", "right-up", "right", "right-down",
               "down", "left-down", "left", "left-up" ]

def slow_dance(direction, array)
  array.each_with_index do |dir, tentacle|
    return tentacle if dir == direction
  end

  nil
end

tiles_hash = {
  "up" => 0, "right-up" => 1, "right" => 2,
  "right-down" => 3, "down" => 4,
  "left-down" => 5, "left" => 6, "left-up" => 7
}

def fast_dance(direction, hash)
  hash.key?(direction) ? hash[direction] : nil
end

# Testing slow dance
p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)

# Testing fast dance
p fast_dance("up", tiles_hash)
p fast_dance("right-down", tiles_hash)
