//: [Previous](@previous)

import Foundation



func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    if nums.count == 0 {
        return []
    }
    
    let groupByKeys = Dictionary(grouping: nums, by: { $0 }).mapValues { $0.count }
    return (groupByKeys.sorted { $0.value > $1.value }.prefix(k).map { $0.key })
 
}


topKFrequent([1,1,1,2,2,3],2)
