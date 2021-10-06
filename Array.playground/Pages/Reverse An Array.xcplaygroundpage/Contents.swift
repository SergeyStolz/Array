import UIKit

// Don't create a new array, reverse it the other way

var array: [Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]
let count = array.count

// First method
for i in 0..<count/2 {
    print("\(i)  \(array[i]) ~  \(array[count - i - 1])" )
    (array[i],array[count - i - 1]) = (array[count - i - 1],array[i])
    print(array)
}


// Second method
for i in 0..<count/2  {
    let tmp = array[count - i - 1]
    array[count - i - 1] = array[i]
    array[i] = tmp
}
print(array)
