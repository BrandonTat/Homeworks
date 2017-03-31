class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
  end

  def show
  end
end

q = Queue.new

q.enqueue(7)
p q

q.enqueue(8)
p q

q.enqueue(9)
p q
