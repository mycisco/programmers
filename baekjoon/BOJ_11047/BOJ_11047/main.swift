//
//  main.swift
//  BOJ_11047
//
//  Created by 김대현 on 2020/02/28.
//  Copyright © 2020 김대현. All rights reserved.
//

import Foundation

var coins: [Int] = []
var cnt: Int = 0


var input = readLine()!.components(separatedBy: " ").map({ Int($0)! })

for _ in 1 ... input[0] {
    let coin = readLine()
    coins.append(Int(coin!)!)
}

for i in coins.reversed() {
    cnt += input[1] / i
    input[1] %= i
}

print(cnt)
