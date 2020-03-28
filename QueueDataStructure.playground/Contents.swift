/*
 
 What is Queue?
 - A queue is a linear data structure
 - 2 primary operations can be done: 1. Enqueue 2. Dequeue
 - Front and Back pointers to point front and back of the queue.
 - FIFO - First In First Out

 Enqueuing = Adding = Offering = Add to the end of the queue = Push the tail pointer forward
 Dequeuing = Polling = Removing from front = Push the head pointer forward
 
 Uses of queue:
 
 - Line up in a theatre or restaurant etc
 - Keep track of x most recently added elements
 - Web server request management
 - Breadth First Search (BFS)
 /*
    - Traverse through each node and continue with their adajacent node.
    - 1 is the frontier node
    - 2 and 3 connected to 1
    - 1 becomes visited node and 2,3 becomes frontier node
 
    Let Q be a Queue
    Q.enqueue(starting_node)
    starting_node.visited = true
    
    While Q is not empty Dp
        node = Q.dequeue()
 
        For neighbour in neighbours(node):
            if neighboar has not been visited:
                neighbour.visited = true
                Q.enqueue(neighbour)
 */
 
 Complexity Anaysis:
 
 Enqueue - O(1)
 Dequeue - O(1)
 Peeking - O(1)
 Contains - O(n)
 Removal - O(n)
 isEmpty - O(1)
 
 */

enum QueueError: Error {
    case empty
}

public struct Queue {
   private var list = [Any]()
    
    init() { }
    
    init(_ firstElement: Any) {
        
    }
}

extension Queue {
    private func peekFirst() -> Any {
        return list.first!
    }
    
    private mutating func removeFirst() -> Any {
        return list.removeFirst()
    }
    
    private mutating func addLast(element: Any) {
        list.append(element)
    }
}

extension Queue {
    public func size() -> Int {
        return list.count
    }
    
    public func isEmpty() -> Bool {
        return size() == 0
    }
    
    public mutating func offer(_ element: Any) {
        addLast(element: element)
    }

    public func peek() throws -> Any {
        if isEmpty() {
            throw QueueError.empty
        }
        return peekFirst()
    }
    
    public mutating func poll() throws -> Any {
        if isEmpty() {
            throw QueueError.empty
        }
        return removeFirst()
    }
}


var groceries = Queue()

groceries.offer("Apple")
groceries.offer("Banana")
groceries.offer("Chikku")
groceries.offer("Grapes")
groceries.offer("Mango")
groceries.offer("Orange")

print(try! groceries.peek())
print(try! groceries.peek())
print(try! groceries.peek())

print(try! groceries.poll())
print(try! groceries.poll())
print(try! groceries.poll())
print(try! groceries.poll())
print(try! groceries.poll())
print(try! groceries.poll())
