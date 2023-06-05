//
//  main.swift
//  practice
//
//  Created by JongHoon on 2023/06/05.
//

import Foundation

func solution(_ n:Int, _ k:Int) -> Int {

    let nums = String(n, radix: k)
        .split(separator: "0")
        .map { Int($0)! }
    
    print(nums)

    let answer = nums
        .filter { isPrime($0) }
        .count

    return answer
}

func isPrime(_ num: Int) -> Bool {
    if num == 1 { return false }
    if num == 2 || num == 3 { return true }

    for n in 2...Int(sqrt(Double(num))) {
        if num % n == 0 {
            return false
        }
    }

    return true
}


print(solution(110011, 10))

