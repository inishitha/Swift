/*
 
 What is a stack?

 - A stack is a one-ended linear data structure
 - 2 primary operations: PUSH and POP
 - TOP pointer - Points to top of the stack
 - No access to any other data apart from topmost data which is pointed by TOP pointer
 - LIFO - Last In First Out
 
 Uses of Stack:
 
 - Undo mechanisms
 - Compilers to check if they are matching the braces or if they are in the right order.
 - Recursion by keeping result of previous function call
 - Backwards/Forwards in browsers

 Complexity Analysis:
 
 Pushing - O(1) - Since we always have the access to the refrence to top of the stack all the time.
 Popping - O(1) - Since we always have the access to the refrence to top of the stack all the time.
 Peeking - O(1) - Since we always have the access to the refrence to top of the stack all the time.
 Searching - O(n)
 Size - O(1)
 
 */

enum StackError: Error {
    case empty
}

public struct Stack {
    
    private var list = [Any]()
    
    init() {
    }
    
    init(_ firstElement: Any) {
        push(firstElement)
    }
}

extension Stack {
    
    public func size() -> Int {
        return list.count
    }
    
    public func isEmpty() -> Bool {
        return size() == 0
    }
    
    public mutating func push(_ element: Any) {
        addLast(element)
    }
    
    public mutating func pop() throws -> Any {
        if isEmpty() {
            throw StackError.empty
        }
        return removeLast()
    }
    
    public func peek() throws -> Any {
        if isEmpty() {
            throw StackError.empty
        }
        return peekLast()
    }

}

extension Stack {
    
    private mutating func removeLast() -> Any {
        return list.removeLast()
    }
    
    private mutating func addLast(_ element: Any) {
        list.append(element)
    }

    private func peekLast() -> Any {
        return list.last!
    }
}

//extension Stack: Sequence {
//
//}


var groceries = Stack()

groceries.push("Apple")
groceries.push("Banana")
groceries.push("Chikku")
groceries.push("Grapes")
groceries.push("Mango")
groceries.push("Orange")

print(try! groceries.peek())
print(try! groceries.peek())
print(try! groceries.peek())

print(try! groceries.pop())
print(try! groceries.pop())
print(try! groceries.pop())
print(try! groceries.pop())
print(try! groceries.pop())
print(try! groceries.pop())

