import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    var count: [Int] = [0, 0, 0]
    let a = [1, 2, 3, 4, 5]
    let b = [2, 1, 2, 3, 2, 4, 2, 5]
    let c = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    
    for i in 0 ..< answers.count {

        if a[i%a.count] == answers[i] {
            count[0] += 1
        }

        if b[i%b.count] == answers[i] {
            count[1] += 1
        }
        
        if c[i%c.count] == answers[i] {
            count[2] += 1
        }
    }
    
    // 가장 큰 값 찾기
    var max = 0
    for i in 0 ..< 3 {
        if count[i] > max {
            max = count[i]
        }
    }

    var result: [Int] = []
    for i in 0 ..< 3 {
        if count[i] == max {
            result.append(i+1)
        }
    }
    
    return result
}

print(solution([1, 2, 3, 4, 5]))
print(solution([1,3,2,4,2]))
