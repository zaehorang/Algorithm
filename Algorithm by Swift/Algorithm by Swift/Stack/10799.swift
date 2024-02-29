//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/26.
//  https://www.acmicpc.net/problem/10799


var str = readLine()!

var s = [Character]()
var t = 0
var prev: Character = " "

for c in str {
    if c == "(" {
        s.append(c)
        prev = c
    } else { // ")"
        if prev == "(" {
            s.removeLast()
            t += s.count
        } else { // prev == ")"
            s.removeLast()
            t += 1
        }
        prev = c
    }
}

print(t)
