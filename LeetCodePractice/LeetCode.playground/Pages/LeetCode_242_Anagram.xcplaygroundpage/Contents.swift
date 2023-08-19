//: [Previous](@previous)

import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }
    
    var dictionary = Dictionary(grouping: Array(s), by: { $0 })
    var tDictionary = Dictionary(grouping: Array(t), by: { $0 })
    return dictionary == tDictionary
}

print(isAnagram("aacc","ccaa"))
