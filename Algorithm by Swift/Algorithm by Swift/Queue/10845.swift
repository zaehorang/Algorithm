//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/20.
//  https://www.acmicpc.net/problem/10845

var queue = [Int]()
var firstIndex = 0  // 처음 데이터를 가리키는 인덱스
var size = 0  // 데이터 개수

let n = Int(readLine()!)!

for _ in 1...n {
    let cmd = readLine()!
    
    switch cmd {
    case "pop":
        if size != 0 {
            print(queue[firstIndex])
            firstIndex += 1
            size -= 1
        } else {
            print(-1)
        }
    case "size":
        print(size)
    case "empty":
        size == 0 ? print(1) : print(0)
    case "front":
        size == 0 ? print(-1) : print(queue[firstIndex])
    case "back":
        size == 0 ? print(-1) : print(queue.last!)  // 가장 마지막에 들어온 데이터
    default:
        let arr = cmd.split(separator: " ")
        let num = Int(String(arr.last!))!
        queue.append(num)
        size += 1
    }
}

