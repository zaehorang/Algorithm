//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/13.
//  https://www.acmicpc.net/problem/1475

import Foundation

// 0~8까지 담을 수 있는 배열 생성 (9는 6에 추가)
var arr = [Int](repeating: 0, count: 9)

var n = readLine()!

for a in n {
    let i = Int(String(a))!
    // == a.wholeNumberValue!
    
    if i == 9 {
        arr[6] += 1
        continue
    }
    
    arr[i] += 1
}


arr[6] = Int(ceil(Double(arr[6]) / Double(2)))
// arr[6] = (arr[6] + 1) / 2

print(arr.max()!)
