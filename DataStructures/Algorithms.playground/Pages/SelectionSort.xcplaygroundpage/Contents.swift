import Foundation
import UIKit

var str = "Selection Sort"

var descriptionSelectionSort = """

1. Find the smallest item in the list
2. Exchange it with the first item
3. Find teh second smallest item and exchange with second item and go on.
4. Finally all the items will be arranged in ascending order.

Note: Starred are the elements that have been exchanged
Eg: [ 45, 20, 40, 5, 15]

Items       Pass1       Pass2       Pass3       Pass4
-------------------------------------------------------
A[0] = 45 |   05*   |     05   |    05     |    05
A[1] = 20 |   20    |     15*  |    15     |    15
A[2] = 40 |   40    |     40   |    20*    |    20
A[3] = 05 |   45*   |     45   |    45     |    40*
A[4] = 15 |   15    |     20*  |    40*    |    45*

"""

func selectionSort(in input: inout [Int]) -> [Int] {

    print("Selection Sort: \nInput Array: \n\(input)\n")

    let n = input.count

    for i in 0...n-2 {
        var position = i
        for j in i+1...n-1 {
            if input[j] < input[position]
            {
                position = j
            }
        }
        let temp = input[position]
        input[position] = input[i]
        input[i] = temp
    }
    
    print("\nOutput Array: \n\(input)")

    return input
}

var input = [45, 20, 40, 5, 15]
selectionSort(in: &input)
