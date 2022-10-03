import UIKit

var greeting = "Hello, playground"



// Map - The map(_:) method creates a new array by calling the callback function provided as an argument on every element in the input array. The map() method will take every returned value from the callback function and creates a new array using those values. This is how we use the map on the array to generate an array of its double value
print("Map ")
let arr1 = [1,2,3,4,5,6]
let arr2 = arr1.map { (element) in
    return element*2
}
print("\(arr2)")



// CompactMap - The compactMap(_:) function removes nil values from the input array. It’s super useful when working with optional. It will first unwrap all optional values from the array and if there is any nil will remove that. This is how we use compact map to remove nil from an array
print("Compact Map ")
let arr3 = [1,2,nil,4,5,6]
let arr4 = arr3.compactMap {$0}
arr4
print("\(arr4)")


// FlatMap - The flatMap(_:) function is similar to map(_:) except it is useful when there are collections inside collections, and we want to merge them into one single collection. This is an example of how we use the flat map to merge all collections
print("flatMap ")
let arr5 = [[1,2,3],[4,5,6],[7,8,9]]
let arr6 = arr5.flatMap{$0}
arr6
print("\(arr6)")

// filter - The filter(_:) function purpose is to filter the elements of a collection based on a condition and produce a new one containing only those elements that satisfy the condition.
let arr7 = [1,2,3,4,5,6,7,9,10]
let arr8 = arr7.filter {$0 > 5}
arr8
print(arr8)


// Reduce - The reduce(_:_:) function is to produce one value from the values of all elements in a collection. To understand what this means exactly, suppose that we want to calculate the sum of the numbers in the following array:
let arr9 = [1,2,3,4,5,6,7,8,9,10]
let arr10 = arr9.reduce(0,{$0 + $1})
arr10
print(arr10)

// forEach - The forEach(_:) function can be used in place of for-in loops in order to iterate through the elements of a collection. Unlike most of the other Higher-Order Functions, forEach does not return a new collection; instead, it just goes through the original collection and allows to use of its items in repetitive operations and tasks. for example, we can use for each to multiple all values by 2
let arr11 =  [1,2,3,4,5,6,7,8,9,10]
arr11.forEach { (number) in
    print(number*2)
}


// Contains - The contains(_:) function is used in collections in order to check if there are elements that satisfy a certain condition and it returns a boolean value. for example in following array we want to check if the array contains 5 or not.
let arr12 = [1,2,3,4,5,6,7,8,9,10]
let result = arr12.contains(5)
result


class LocationManager {
    static let shared = LocationManager()
    
    var locationGranted: Bool?
    
    private init() {}
    
    func requestionLocation() {
        locationGranted = true
        print("Location Granted")
    }
}

LocationManager.shared.requestionLocation()

