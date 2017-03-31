class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    if key?(key)
      key_index = get_keys.index(key)
      @map[key_index][1] = value
    else
      @map << [key, value]
    end
  end

  def lookup(key)
    if key?(key)
      key_index = get_keys.index(key)
      @map[key_index][1]
    else
      nil
    end
  end

  def remove(key)
    if key?(key)
      key_index = get_keys.index(key)
      @map.delete_at(key_index)
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

  def key?(key)
    keys = get_keys
    keys.include?(key)
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

m.remove(2)
m.show
