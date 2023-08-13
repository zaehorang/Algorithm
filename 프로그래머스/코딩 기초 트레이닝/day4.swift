//
//  day4.swift
//  Algorithm Practice
//
//  Created by zaehorang on 2023/08/13.
//  day4

import Foundation

//MARK: - 1. n의 배수

func solution(_ num:Int, _ n:Int) -> Int {
    return num % n == 0 ? 1 : 0
}

//MARK: - 2. 공배수

//  ⭐️stride(from: , through: , by: ), .reduce(0, +)
//  나의 풀이
func solution(_ n:Int) -> Int {
    var answer = 0
    if n % 2 == 0 {
        for i in 1...n {
            if i % 2 == 0 {
                answer += (i * i)
            }
        }
    } else {
        for i in 1...n {
            if i % 2 != 0 {
                answer += i
            }
        }
    }
    return answer
}
// 다른 풀이: number.isMultiple(of: n) && number.isMultiple(of: m) ? 1 : 0
// ⭐️ Int.inMultiple(of: )
func solution(_ number:Int, _ n:Int, _ m:Int) -> Int {
    return number % n == 0 && number % m == 0 ? 1 : 0
}

//MARK: - 3. 홀짝에 따라 다른 값 반환하기

//  나의 풀이
func solution(_ n:Int) -> Int {
    var answer = 0
    if n % 2 == 0 {
        for i in 1...n {
            if i % 2 == 0 {
                answer += (i * i)
            }
        }
    }
    else {
        for i in 1...n {
            if i % 2 != 0 {
                answer += i
            }
        }
    }
    return answer
}
//  다른 풀이1:
if n % 2 == 0 { return stride(from: 2, through: n, by: 2).reduce(0) { $0 + $1 * $1 } }
    else { return stride(from: 1, through: n, by: 2).reduce(0, +) }

//  다른 풀이2:
n % 2 == 1 ? (1...n).filter { $0 % 2 == 1 }.reduce(0, +) : (0...n).filter { $0 % 2 == 0 }.map { $0 * $0 }.reduce(0, +)

//MARK: - 4. 조건 문자열

//  나의 풀이
func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    var answer = 0
    if ineq == ">" &&  eq == "=" {
       answer = (n >= m ?  1 : 0)
    } else if ineq == ">" &&  eq != "=" {
        answer = (n > m ?  1 : 0)
    } else if ineq == "<" &&  eq == "=" {
        answer = (n <= m ?  1 : 0)
    } else {
        answer = (n < m ?  1 : 0)
    }
    return answer
}
//  다른 풀이 -> swich문 활용
func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    switch ineq+eq {
        case ">=": return n >= m ? 1 : 0
        case "<=": return n <= m ? 1 : 0
        case ">!": return n > m ? 1 : 0
        case "<!": return n < m ? 1 : 0
        default: return 0
    }
}

//MARK: - 5. flag에 따라 다른 값 반환하기

func solution(_ a:Int, _ b:Int, _ flag:Bool) -> Int {
    return flag ? a + b : a - b
}
