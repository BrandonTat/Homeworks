class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    @map << [key, value]
  end

  def show
    p @map
  end

  def get_keys
    keys = []

    @map.each do |entry|
      keys << entry[0]
    end

    keys
  end
end

m = Map.new
m.show

m.assign(1, 10)
m.show

m.assign(2, 10)
m.show

p m.get_keys
