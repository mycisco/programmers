import UIKit

//https://programmers.co.kr/learn/courses/30/lessons/12910#
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var ret: [Int] = []
    for value in arr {
        if value % divisor == 0 {
            ret.append(value)
        }
    }
    
    if ret.count == 0 {
        return [-1]
    }
    
    return ret.sorted()
}

print(solution([5, 9, 7, 10], 5))
print(solution([2, 36, 1, 3], 1))
print(solution([3, 2, 6], 10))
