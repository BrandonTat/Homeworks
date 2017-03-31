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
end

m = Map.new
m.show

m.assign(1, 10)
m.show

m.assign(2, 10)
m.show
