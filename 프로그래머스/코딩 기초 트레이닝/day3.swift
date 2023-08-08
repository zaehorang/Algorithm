//
//  day3.swift
//  Algorithm Practice
//
//  Created by zaehorang on 2023/08/08.
//  Day3

import Foundation

// ⭐️⭐️1. 문자열 섞기
// 다른 방법: zip(str1, str2).map { String($0) + String($1) }.joined()
// 다른 방법: for i in 0..<str1.count {
    //let index = str1.index(str1.startIndex, offsetBy: i)
    //result.append(str1[index])
    //result.append(str2[index])
    //}
func solution(_ str1:String, _ str2:String) -> String {
    var answer = ""
    var s1 = str1
    var s2 = str2
    
    for _ in 1...str1.count {
        if let chr = s1.first {
            answer += String(chr)
            s1.removeFirst()
        }
        
        if let chr = s2.first {
            answer += String(chr)
            s2.removeFirst()
        }
    }
    
    return answer
}

// 2. 문자 리스트를 문자열로 변환하기
func solution(_ arr:[String]) -> String {
    return arr.joined()
}

// 3. 문자열 곱하기
func solution(_ my_string:String, _ k:Int) -> String {
    var answer = ""
    for n in 1...k {
        answer += my_string
    }
    return answer
}
// 다른 방법: String(repeating: my_string, count: k)

// 4. 더 크게 합치기
func solution(_ a:Int, _ b:Int) -> Int {
    var num1 = Int([String(a), String(b)].joined())!
    var num2 = Int([String(b), String(a)].joined())!
    
    return num1 >= num2 ? num1 : num2
    //다른 방법: max(num1, num2)
}

// 5. 두 수의 연산값 비교하기
func solution(_ a:Int, _ b:Int) -> Int {
    return max(Int(String(a) + String(b))!, 2 * a * b)
}
