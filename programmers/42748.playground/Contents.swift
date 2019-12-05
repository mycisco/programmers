import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var result: [Int] = []
    for i in 0 ..< commands.count {
        
        let command = commands[i]
        let first = command[0]
        let last = command[1]
        let pick = command[2]
        
        let slice = array[first-1..<last].sorted()
        result.append(slice[pick-1])
    }
    
    
    return result
}

solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])
