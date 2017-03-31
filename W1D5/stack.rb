class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

s = Stack.new
p s

s.add(1)
p s

s.add(2)
p s

s.add(3)
p s

s.remove
p s

p s.show
