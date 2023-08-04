//
//  day2.swift
//  Algorithm Practice
//
//  Created by zaehorang on 2023/08/05.
//  Day 2

import Foundation


//MARK: - 1. 두 수의 나눗셈

func solution(_ num1:Int, _ num2:Int) -> Int {
    
    var answer = Double(num1) / Double(num2) * 1000
    // var answer = num1 * 1000 / num2
    
    return Int(answer)
    
}

//MARK: - 2. 숫자 비교하기

func solution(_ num1:Int, _ num2:Int) -> Int {
    
    if num1 == num2 {
        return 1
    }
    return -1
    
    // 다른 풀이
//    var answer = num1 == num2 ? 1 : -1
//        return answer
}

//MARK: - ⭐️⭐️⭐️3. 분수의 덧셈

// 첫 풀이
func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    
    var a = numer1 * denom2 + denom1 * numer2
    var b = denom1 * denom2
    var minNum = a >= b ? b : a        // var minNum = min(a, b)
    
    var cnt = 2
    while cnt <= minNum / 2  {
        if a % cnt == 0 && b % cnt == 0 {
            a = a / cnt
            b = b / cnt
            cnt = 2
            continue
        }
        cnt += 1
    }
    
    return [a, b]
}

// 두 번째 풀이 -> 최대 공약수 구해서 나누기
func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    
    var a = numer1 * denom2 + denom1 * numer2
    var b = denom1 * denom2
    var minNum = min(a, b)
    
    // 1부터 진행하기 떄문에 !(강제 언래핑)가능 => 최대 공약수 구하는 방법
    var gcd = (1...minNum).filter({ a % $0 == 0 && b % $0 == 0}).max()!
    
    return [a / gcd, b / gcd]
}

// 최대 공약수 방법 2
func gcd(_ a: Int, _ b: Int) -> Int {
    let maxNum = max(a, b)
    let minNum = min(a, b)

    let remain = maxNum % minNum
    return remain == 0 ? minNum : gcd(minNum, remain)
}

//MARK: - 4. 배열 두배 만들기

func solution(_ numbers:[Int]) -> [Int] {
    
    return numbers.map { $0 * 2 }
}
