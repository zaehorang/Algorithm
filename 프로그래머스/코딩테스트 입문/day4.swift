//
//  day4.swift
//  Algorithm Practice
//
//  Created by zaehorang on 2023/08/13.
//  day4

import Foundation

//MARK: - 1. 피자 나눠 먹기 (1)

//  다른 답안: Int { n / 7 + (n % 7 > 0 ? 1 : 0) }
func solution(_ n:Int) -> Int {
    var answer = 0
    answer += n / 7
    if n % 7 > 0 {
        answer += 1
    }
    return answer
}

//MARK: - 2. 피자 나눠 먹기 (2)

func solution(_ n:Int) -> Int {
    var answer = 1
    while true {
        if (6 * answer) % n == 0 {
            break
        }
        answer += 1
    }
    
    // 더 간단하게 가능..
//    while (answer * 6) % n != 0 {
//        answer += 1
//    }
    
    return answer
}

//MARK: - 3. 피자 나눠 먹기 (3)

func solution(_ slice:Int, _ n:Int) -> Int {
     n / slice + (n % slice > 0 ? 1 : 0)  // 삼항 연산자 괄호 주의
}

//MARK: - 4. (연속된) 배열의 평균값

func solution(_ numbers:[Int]) -> Double {
    var total = numbers.reduce(0) { $0 + $1 }
    var cnt = numbers.count
    return Double(total) / Double(cnt)
}
