//: [Previous](@previous)

import Foundation

func winner(erica: String, bob: String) -> String {
    
    var scoreDictionary = [Character: Int]()
    scoreDictionary["E"] = 1
    scoreDictionary["M"] = 3
    scoreDictionary["H"] = 5
    
    let ericaArray = Array(erica)
    let bobArray = Array(bob)
   
    var aricaCount = 0
    for index in 0..<ericaArray.count {
        let value = ericaArray[index]
        let number = scoreDictionary[value] ?? 0
        aricaCount = aricaCount + number
    }
    
    var bobCount = 0
    for index in 0..<bobArray.count {
        let value = bobArray[index]
        let number = scoreDictionary[value] ?? 0
        bobCount = bobCount + number
    }
    
    if aricaCount == bobCount {
        return "Tie"
    } else if aricaCount > bobCount {
        return "Erica"
    } else {
        return "Bob"
    }
    
}


print(winner(erica: "EHH", bob: "EME"))
