//
//  main.swift
//  Algorithm Practice
//
//  Created by zaehorang on 2023/07/27.
//  Day 1


import Foundation

//1. 문자열 출력하기

let s1 = readLine()!
print(s1)


//2. a와 b 출력하기

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print("a = \(a)")
print("b = \(b)")

// 한줄로 가능: print("a = \(a)\nb = \(b)")


//3. 문자열 반복해서 출력하기

let inp = readLine()!.components(separatedBy: [" "]).map { $0 }
let (s1, a) = (inp[0], Int(inp[1])!)

for _ in 1...a {
    print(s1, terminator: "")
}

//문제에서 .map { $0 }을 써줬는데 사실 없어도 되는 코드
//참고 답안 print(String(repeating: s1, count: a))


//4. 대소문자 바꿔서 출력하기

let s1 = readLine()!

var answer = ""

for chr in s1 {
    if chr.isUppercase {
        answer += chr.lowercased()
    } else {
        answer += chr.uppercased()
    }
}

print(answer)

//참고 답안: var ans = s1.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }.joined()


//5. 특수문자 출력하기

var str = #"!@#$%^&*(\'"<>?:;"#

print(str)

//Raw String 사용
