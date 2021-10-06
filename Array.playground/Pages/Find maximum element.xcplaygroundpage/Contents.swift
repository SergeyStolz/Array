import UIKit
//Array
// Iterate over all the elements of the array, find the maximum. Print its index.
let array: [Int] = [1, 5, 7, 10, 2, 13, 3, 8, 12, 4, 11, 9, 6]

func maxElementArray(array: [Int]) -> (Int, Int) {

    var maxNumber:Int = array[0]
    var indexElement: Int = 0

    for i in 0..<array.count {
        if array[i] > maxNumber {
            maxNumber = array[i]
            indexElement = i
        }
    }
    print("The maximum element of the array is \(maxNumber).\nAnd its index is \(indexElement)")
    return (maxNumber, indexElement)
}

maxElementArray(array: array)
