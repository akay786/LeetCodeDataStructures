//: [Previous](@previous)

import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    if strs.count == 0 {
           return []
       }
       
       if strs.count == 1 {
           return [strs]
       }
       
       var dictionary = [String: [String]]()
       for str in strs {
           let sorted = String(str.sorted())
           
           if dictionary[sorted] == nil {
               dictionary[sorted] = [str]
           } else {
               var array = dictionary[sorted] ?? []
               array.append(str)
               dictionary[sorted] = array
           }
       }
       
       return dictionary.map { $0.value }
}


dump(groupAnagrams(["cab","tin","pew","duh","may","ill","buy","bar","max","doc"]))




