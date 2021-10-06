import UIKit

// Binary Search
let array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]

func searchElement(elements: [Int], target: Int) -> Int? {
    var lowElement = 0
    var upperElement = elements.count
    
    while lowElement < upperElement {
        let pivot = ((upperElement - lowElement) / 2) + lowElement
        if target == elements[pivot] {
            return pivot
        } else if target < elements[pivot] {
            upperElement = pivot - 1
        } else {
            lowElement = pivot + 1
        }
    }
    return nil
}
searchElement(elements: array, target: 5)
