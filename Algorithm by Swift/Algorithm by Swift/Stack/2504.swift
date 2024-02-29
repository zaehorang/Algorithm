//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/29.
//  https://www.acmicpc.net/problem/2504

let str = readLine()!

var s = [Character]()

var ans = 0
var n = 1  // 곱해지는 값

var prev: Character = " "  // 반복문의 직전 문자 저장

for c in str {
    if c == "(" {
        n *= 2
        s.append(c)
        
    } else if c == "[" {
        n *= 3
        s.append(c)
        
    } else if c == ")" {
        
        if s.isEmpty || s.last != "(" {
            s.append(" ")  // 정답 출력 시, 스택의 빈배열 분기처리로 정답을 한 번만 출력하기 위함
            break
            
        } else if prev == "(" {
            ans += n
            n /= 2
            s.removeLast()
            
        } else { // 경우: 닫 -> 닫
            s.removeLast()
            n /= 2
        }
        
    } else {  // c == "]'
        if s.isEmpty || s.last != "[" {
            s.append(" ")
            break
        } else if prev == "[" {
            ans += n
            n /= 3
            s.removeLast()
        } else { // 경우: 닫 -> 닫
            s.removeLast()
            n /= 3
        }
    }
    
    prev = c  // 직전 문자 기록
}

if s.isEmpty {
    print(ans)
} else {
    print(0)
}
