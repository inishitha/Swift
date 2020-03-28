
import Foundation

var str = "Position of smallest element"

func findPositionOfSmallestElement<T: Comparable>(in array: [T]) -> (position: Int, smallest: T) {
    var pos: Int = 0
    for index in 1...array.count-1 {
        if array[index] < array[pos]
        {
            pos = index
        }
    }
    
    defer {
        print("\nArray is:\n\(array) \nPosition is \(pos) \nSmallest value is \(array[pos])\n")
    }
    return (pos, (array[pos]))
}

findPositionOfSmallestElement(in: [23, 3, 7, 10, 99, 1])
findPositionOfSmallestElement(in: ["d", "e", "f", "z", "a", "c"])
findPositionOfSmallestElement(in: [5.78, 5.88, 4.99, 4.77, 12.00])
findPositionOfSmallestElement(in: ["a", "d", "e", "f", "z", "c"])
