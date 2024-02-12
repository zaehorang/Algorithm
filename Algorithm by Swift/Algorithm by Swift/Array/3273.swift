//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/12.
//  https://www.acmicpc.net/problem/3273

let n = readLine()!
let array = readLine()!.split(separator: " ").map{ Int($0)! }
let x = Int(readLine()!)!

var ans = 0

var occur = [Int](repeating: 0, count: 2000001)

for num in array {
    // ⭐️인덱스 양수 조건
    if x - num > 0 && occur[x - num] == 1 {
        ans += 1
    } else {
        occur[num] = 1
    }
}

print(ans)
