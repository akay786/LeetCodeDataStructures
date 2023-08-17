import UIKit

//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for index in 0..<nums.count {
        if index + 1 < nums.count {
            for secondNumberIndex in index + 1..<nums.count {
                if (nums[index] + nums[secondNumberIndex]) == target {
                    return [index, secondNumberIndex]
                }
            }
        }
    }
    return []
}


dump(twoSum([3,3], 6))

