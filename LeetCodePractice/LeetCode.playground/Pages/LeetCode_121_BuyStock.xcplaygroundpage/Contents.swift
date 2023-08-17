//: [Previous](@previous)

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    var buy = Int.max
    var maxProfit = 0
    for price in prices {
        if price < buy {
            buy = price
        } else if price - buy > maxProfit {
            maxProfit = price - buy
        }
        
    }
    return maxProfit
}

print(maxProfit([7,1,5,3,6,4]))
