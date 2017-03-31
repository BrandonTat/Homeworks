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
    p @queue.dup
  end
end

q = Queue.new

q.enqueue(7)
q.show

q.enqueue(8)
q.show

q.enqueue(9)
q.show

q.dequeue
q.show

q.dequeue
q.show

q.enqueue(0)
q.show
