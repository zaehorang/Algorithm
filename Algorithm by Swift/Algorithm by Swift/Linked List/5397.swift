//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/21.
//  https://www.acmicpc.net/problem/5397

let n = Int(readLine()!)!

for _ in 1...n {
    let cmd = readLine()!
    
    solve(cmd)
}

// 풀이1: 배열 두 개 이용 (문자열로도 가능)
func solve(_ str: String) {
    
    var leftArr = [Character]()
    var rightArr = [Character]()
    
    for char in str {
        if char == "<" {
//            if let last = leftArr.popLast() {
//                rightArr.append(last)
//            }
            // 이 코드가 미세하게 빠름
            if !leftArr.isEmpty {
                rightArr.append(leftArr.removeLast())
            }
        } else if char == ">" {
//            if let last = rightArr.popLast() {
//                leftArr.append(last)
//            }
            if !rightArr.isEmpty {
                leftArr.append(rightArr.removeLast())
            }
        } else if char == "-" {
            let _ = leftArr.popLast()
        } else { // 문자 입력
            leftArr.append(char)
        }
    }
    
    print(String(leftArr) + String(rightArr.reversed()))
}
