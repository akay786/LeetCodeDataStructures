//: [Previous](@previous)

import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    var dictionary = [Int: Bool]()
    for num in nums where dictionary[num] == nil {
        dictionary[num] = true
    }
    
    return dictionary.keys.count != nums.count
}
