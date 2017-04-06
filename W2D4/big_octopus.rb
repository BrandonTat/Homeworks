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


class Array
  def merge_sort(&prc)
    return self if size <= 1

    mid = length / 2
    left = self.take(mid).merge_sort(&prc)
    right = self.drop(mid).merge_sort(&prc)

    Array.merge(left, right, &prc)
  end

  private

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      if prc.call(left, right) < 1
        merged << left.shift
      else
        merged << right.shift
      end
    end

    merged.concat(left).concat(right)
  end

end


def linearithmic_octopus(array)
  prc = proc { |x, y| x.length <=> y.length }
  array.merge_sort(&prc).last
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

p linearithmic_octopus(fish)
