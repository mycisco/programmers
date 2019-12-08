import Foundation

func solution(_ n:Int) -> Int
{

    var numbers: [Int] = []
    for character in String(n) {
        let number: Int = Int(String(character))!
        numbers.append(number)
    }

    var sum: Int = numbers.reduce(0, {(result: Int, element: Int) -> Int in
        return result + element
    })
    return sum
}

/*
 모법 답안
 let string: String = String(n)
 return string.reduce(0) { $0 + Int(String($1))! }
 */

solution(123456)
