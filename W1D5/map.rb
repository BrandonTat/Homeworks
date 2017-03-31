class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    keys = get_keys

    if keys.include?(key)
      key_index = keys.index(key)
      @map[key_index][1] = value
    else
      @map << [key, value]
    end
  end

  def lookup(key)
    keys = get_keys
    if keys.include?(key)
      key_index = keys.index(key)
      @map[key_index][1]
    else
      nil
    end
  end

  def show
    p @map
  end

  private

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

m.assign(1, 0)
m.show

p m.lookup(1)
p m.lookup("hello")
