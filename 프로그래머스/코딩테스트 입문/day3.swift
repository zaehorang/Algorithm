//
//  day3.swift
//  Algorithm Practice
//
//  Created by zaehorang on 2023/08/05.
//  Day3

import Foundation
@main

// 1. 나머지 구하기
func solution(_ num1:Int, _ num2:Int) -> Int {
    return num1 % num2
}

// 2. 중앙값 구하기
func solution(_ array:[Int]) -> Int {
    return array.sorted()[array.count / 2]  // sort() / sorted() 기억하기
    array.
}

// 3. 최빈값 구하기
// 조금 더 고민...

// 4. 짝수는 싫어요
// 다른 답: (0...n).filter { %0 % 2 == 1 }
func solution(_ n:Int) -> [Int] {
    var arr: [Int] = []
    for i in 1...n {
        if i % 2 == 1 {
            arr.append(i)
        }
    }
    return arr
}
