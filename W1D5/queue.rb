class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
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

q.dequeue
p q

q.dequeue
p q

q.enqueue(0)
p q
