//: [Previous](@previous)

import Foundation

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var count = 0
    var startIndex = 0
    var endIndex = 3
    
    var columnIndex = 3
    var rowIndex = 0
    
    for index in 0..<3 {
        for innerIndex in 0..<3 {
            
            for rowIndex in startIndex..<endIndex {
                let rowBoard = board[rowIndex]
                for columnIndex in rowIndex..<rowIndex + 3 {
                    let value = rowBoard[columnIndex]
                    count = count + 1
                    print(value)
                }
            }
            
            startIndex = endIndex
            endIndex = startIndex + 3
            print("\n")
        }
        print("Start index: \(startIndex)")
        print("end index: \(endIndex)")
    }
    
    print("Count: \(count)")
    return true
}


let board: [[Character]] = [
 ["5","3",".",".","7",".",".",".","."]
,["6",".",".","1","9","5",".",".","."]
,[".","9","8",".",".",".",".","6","."]
,["8",".",".",".","6",".",".",".","3"]
,["4",".",".","8",".","3",".",".","1"]
,["7",".",".",".","2",".",".",".","6"]
,[".","6",".",".",".",".","2","8","."]
,[".",".",".","4","1","9",".",".","5"]
,[".",".",".",".","8",".",".","7","9"]
]

//isValidSudoku(board)
