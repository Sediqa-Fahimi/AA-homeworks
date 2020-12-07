class GraphNode
    attr_accessor :value, :neighbors, :visited
    def initialize(value)
        @value = value
        @neighbors = []
        @visited = false
    end
    def self.bfs(node, value)
        queue = [node]
        while !queue.empty?
            check = queue.shift
            if !check.visited
                check.visited = true
                if check.value == value
                    return check
                end
                queue.concat(check.neighbors)
            end
        end
        nil
    end
   
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p GraphNode.bfs(a, "b")
p GraphNode.bfs(a, "f")