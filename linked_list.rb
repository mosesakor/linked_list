class LinkedList
    attr_accessor :head, :tail
    def initialize
        @head = nil
        @tail = nil
    end

    def add_item(data)
        if @head == nil
            @tail = data
            @head = tail
        else
            data.next = @head
            @head = data
            @head
        end
    end

    def add_last(data)
        if @head == nil
            @head = data
        else
            data.next = @tail
            @tail = data
        end
    end

    def size
        size = 0
        tmp = @head
        while tmp != nil
            tmp = tmp.next
            size += 1
        end
        p size
    end


    def head
        @head
    end

    def tail
        @tail
    end

    def at(index)
        tmp = @head
        while index > 0
            index -= 1
            tmp = tmp.next
        end
        tmp
    end

    def pop
        tmp = @head
        while tmp.next.next != nil
            tmp = tmp.next
        end
        @tail = tmp
        tmp.next = nil
    end

    def contains?(value)
        tmp = @head
        while tmp != nil
            return true if tmp.data == value
            tmp = tmp.next
        end
        false
    end

    def find(value)
        index = 0
        tmp = @head
        while tmp != nil
            return index if tmp.data == value
            tmp = tmp.next
            index += 1
        end
    end

    def to_s
        list = ""
        tmp = @head
        while tmp != nil
            list += tmp.data + " "
            tmp = tmp.next
        end
        list.strip
    end

    def insert_at(value, index)
        node = Node.new(value)
        tmp = head
        i = 0
        while index != i
            tmp = tmp.next
            i += 1
        end
        node.next = tmp.next
        node = nil
    end



end

class Node
    attr_accessor :data, :next
    def initialize(data)
        @data = data
        @next = nil
    end
end

hi = Node.new("moe")
hii = Node.new("cat")
hiii = Node.new("pat")

test = LinkedList.new()
 test.add_item(hi)
 test.add_item(hii)
 test.add_item(hiii)
 test.size

 p test
p test.head
 test.at(0)
 test.pop

 p test.contains?("cat")
 p test.find("caat")
 p test.to_s
 p test.size


