//: [Previous](@previous)

import Foundation

func textQueries(sentences: [String], queries: [String]) -> [Int] {
    
    print(sentences)
    print(queries)
    return []
}


textQueries(sentences: [
"bob and alice like to text each other",
"bob does not like to ski but does not like to fall",
"Alice likes to ski"
], queries: [
"bob alice",
"alice",
"like",
"non occurrence"
])
