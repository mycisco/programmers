import UIKit

func solution(_ a:Int, _ b:Int) -> String {
    
    let day: [String] = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU", ]
    let month: [Int] = [31,29,31,30,31,30,31,31,30,31,30,31]

    let totalDay = month[0..<a-1].reduce(0) {
        return $0 + $1
    }
    return day[(totalDay + b-1) % 7]
}

solution(5, 24)
