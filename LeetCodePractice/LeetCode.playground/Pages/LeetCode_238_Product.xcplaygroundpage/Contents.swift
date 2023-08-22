//: [Previous](@previous)

import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    if nums.count <= 2 {
        return nums
    }
    
    var array: Array<Int?> = Array(repeating: nil, count: nums.count)
    for index in 0..<nums.count {
        var multiply = 1
        for innerIndex in 0..<nums.count {
            if innerIndex != index {
                multiply = multiply * nums[innerIndex]
            }
        }
        
        array[index] = multiply
        if index + 1 == nums.count {
            return array.map { $0 ?? 0 }
        }
    }
    
    
    return []
}


dump(productExceptSelf([1,2,3,4]))

