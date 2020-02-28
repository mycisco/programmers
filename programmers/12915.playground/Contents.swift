import UIKit

func solution(_ strings:[String], _ n:Int) -> [String] {
    
    let result = strings.sorted {
        let first = $0[$0.index($0.startIndex, offsetBy: n)]
         let second = $1[$1.index($1.startIndex, offsetBy: n)]
        
         if first == second {
             return $0 < $1
         } else if first < second {
             return first < second
         } else {
             return false
         }
    }
    
    
    return result
}


solution(["sun", "bed", "car"], 1)
