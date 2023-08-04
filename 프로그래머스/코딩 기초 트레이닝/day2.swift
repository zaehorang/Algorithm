//
//  main.swift
//  Algorithm Practice
//
//  Created by zaehorang on 2023/07/28.
//  Day2

import Foundation


// 1. 덧셈식 출력하기

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print("\(a) + \(b) = \(a + b)")


// 2. 문자열 붙여서 출력하기

let inp = readLine()!.components(separatedBy: [" "]).map { $0 }
let (s1, s2) = (inp[0], inp[1])

print(s1 + s2)


// 3. 문자열 돌리기

let s1 = readLine()!

s1.map { print($0) }


// 4. 홀짝 구분하기

let a = Int(readLine()!)!

if a % 2 == 0 {
    print("\(a) is even")
} else {
    print("\(a) is odd")
}

다른 답: print(a, "is", a % 2 == 0 ? "even" : "odd")


// ⭐️⭐️⭐️ 5. 문자열 겹쳐쓰기
func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    
    var a = my_string.map { String($0)}
    var b = overwrite_string.map { String($0)}
    var cnt = s + overwrite_string.count
    
    a.replaceSubrange(s..<cnt, with: b)  //함수 기억하기!
    
    return a.joined()
}
