class LRUCache
  def initialize(size)
    @cache = []
    @size = size
  end

  def count
    @cache.count
  end

  def add(el)
    if @cache.include?(el)
      @cache.delete(el)
      @cache << el
    elsif count >= @size
      @cache.shift
      @cache << el
    else
      @cache << el
    end
  end

  def show
    p @cache
  end
end

# # Tests
# p johnny_cache = LRUCache.new(4)
#
# p johnny_cache.add("I walk the line")
# p johnny_cache.add(5)
#
# p johnny_cache.count # => returns 2
#
# p johnny_cache.add([1,2,3])
# p johnny_cache.add(5)
# p johnny_cache.add(-5)
# p johnny_cache.add({a: 1, b: 2, c: 3})
# p johnny_cache.add([1,2,3,4])
# p johnny_cache.add("I walk the line")
# p johnny_cache.add(:ring_of_fire)
# p johnny_cache.add("I walk the line")
# p johnny_cache.add({a: 1, b: 2, c: 3})
#
#
# p johnny_cache.show
