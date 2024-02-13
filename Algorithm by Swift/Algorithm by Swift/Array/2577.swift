//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/13.
//  https://www.acmicpc.net/problem/2577

import Foundation

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

let d = "\(a * b * c)"

var occur = [Int](repeating: 0, count: 10)

for i in d {
    let index = String(i)
    
    occur[Int(index)!] += 1
    
}

for i in occur {
    print(i)
}

// 위와 동일

/*
 var abc = [Int]()
 var arr = [Int](repeating: 0, count: 10)
 for _ in 0..<3 {
     abc.append(Int(readLine()!)!)
 }
 
 String(abc.reduce(1, *)).forEach {
     arr[Int(String($0))!] += 1
 }

 arr.forEach {
     print($0)
 }
 
 */
