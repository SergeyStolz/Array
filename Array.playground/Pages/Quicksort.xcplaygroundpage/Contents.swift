import UIKit

// QuickSort
let unsortedArray = [7, 2, 6, 3, 9, 4, 1, 5, 8]

func quickSort(array:[Int]) -> [Int]{
    var less = [Int]()
    var equal = [Int]()
    var greater = [Int]()
    
    if array.count > 1 {
        let pivot = array[array.count / 2]
        for i in array {
            if i < pivot {
                less.append(i)
            }
            if i == pivot {
                equal.append(i)
            }
            if i > pivot {
                greater.append(i)
            }
        }
        return (quickSort(array:less)+equal+quickSort(array:greater))
    } else {
        return array
    }
}
let sortedArr = quickSort(array: unsortedArray)
