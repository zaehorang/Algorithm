//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/22.
//  https://www.acmicpc.net/problem/10773

var s = [Int]()

let n = Int(readLine()!)!

for _ in 1...n {
    let a = Int(readLine()!)!
    
    if a != 0 {
        s.append(a)
    } else {  // 0인 경우
//        if s.isEmpty { continue }  // 잘못된 숫자를 부를때마다 0을 외친다는 조건이 있으므로 비어있는 경우는 고려하지 않아도 될 듯.
        s.removeLast()
    }
}

print(s.reduce(0, +))
