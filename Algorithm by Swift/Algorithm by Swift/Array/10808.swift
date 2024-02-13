//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/12.
//  https://www.acmicpc.net/problem/10808

import Foundation

//MARK: - 참고 풀이
// 알파벳 아스키 코드를 고려하면 for문 한 번으로도 가능.
// O(n)
let input = readLine()!
var array = [Int](repeating: 0, count: 26)
var a:Character = "a"

for alphabet in input {
    let index = Int(alphabet.asciiValue! - a.asciiValue!)  // 대문자가 있을 시 이렇게 사용하면 안된다. (overflow 발생)
    array[index] += 1
}

print(array.map{ String($0) }.joined(separator: " "))


//MARK: - 첫 번째 풀이
// 이중 for문으로 O(n^2)

//var input = readLine()
//
//if let input = input {
//    var answer = [Int](repeating: 0, count: 26)
//    var alphabets = "abcdefghijklmnopqrstuvwxyz"
//    var index = 0
//
//    for str in input {
//
//        for alphabet in alphabets {
//            if str == alphabet {
//                answer[index] += 1
//
//                index = 0
//                break
//            } else {
//                index += 1
//            }
//        }
//    }
//
//    print(answer.map { String($0) }.joined(separator:" ") )
//}
