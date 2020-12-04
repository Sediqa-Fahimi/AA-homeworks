class Stack
    def initialize
    # create ivar to store stack here!
        @stack = Array.new
    end

    def push(el)
    # adds an element to the stack
        @stack << el
    end

    def pop
    # removes one element from the stack
        @stack.pop
    end

    def peek
    # returns, but doesn't remove, the top element in the stack
        @stack[-1]
    end
end
stack = Stack.new
stack.push(23)
stack.push(65)
stack.push(34)
stack.push(44)
stack.push(9)
p stack.peek
stack.pop
stack.pop
p stack.peek

class Queue
    def initialize
        @queue = Array.new
    end
    def enqueue(el)
        @queue << el
    end
    def dequeue
        @queue.shift
    end
    def peek
        @queue.first
    end
end
queue = Queue.new
queue.enqueue(23)
queue.enqueue(54)
queue.enqueue(99)
queue.enqueue(12)
p queue.peek
queue.dequeue
queue.dequeue
p queue.peek

class Map
    def initialize
        @map = Array.new
    end
    def set(key,value)
        @map.each {|pair| return "#{key} already existed" if pair.include?(key)}
        @map << [key,value]
    end
    def get(key)
        @map.each {|pair| return pair[0] if pair.include?(key)}
        nil
    end
    def delete(key)
        @map.each do |pair|
            if pair[0] == key
                @map.delete(pair)
            end
        end
        nil
    end
    def show
        @map
    end
end
my_map = Map.new
p my_map.set("name","Alex")
p my_map.set("l_name","Jon")
p my_map.set("age",30)
p my_map.set("name","Sediqa")
p my_map.get("present?")
p my_map.get("name")
p my_map.delete("age")
p my_map.show


