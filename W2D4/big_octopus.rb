fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',
        'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def quadratic_octopus(array)
  longest_fish = nil

  array.each_with_index do |fish1, i|
    if longest_fish.nil? || longest_fish.length < fish1.length
      longest_fish = fish1
    end

    array.each_with_index do |fish2, j|
      next if i == j
      fish2 = longest_fish if fish2.length > longest_fish.length
    end
  end

  longest_fish
end

def linearithmic_octopus
end

def linear_octopus(array)
  longest_fish = nil
  array.each do |fish|
    if longest_fish.nil? || fish.length > longest_fish.length
      longest_fish = fish
    end
  end

  longest_fish
end

p linear_octopus(fish)
