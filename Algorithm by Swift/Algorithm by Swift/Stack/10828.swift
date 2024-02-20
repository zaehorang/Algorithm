//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/20.
//  https://www.acmicpc.net/problem/10828

struct Stack {
    var stack =  [Int]()
    
    mutating func push(n: Int) {
        stack.append(n)
    }
    
    mutating func pop() -> Int {
        return stack.popLast() ?? -1
    }
    
    func getSize() -> Int {
        stack.count
    }
    
    func isEmpty() -> Int {
        stack.isEmpty ? 1 : 0
    }
    
    func top() -> Int {
        stack.last ?? -1
    }
}


var list = Stack()

let n = Int(readLine()!)!

for _ in 1...n {
    let cmd = readLine()!
    
    switch cmd {
    case "pop":
        print(list.pop())
    case "size":
        print(list.getSize())
    case "empty":
        print(list.isEmpty())
    case "top":
        print(list.top())
    default:
        let arr = cmd.split(separator: " ")
        let num = Int(String(arr.last!))!
        list.push(n: num)
    }
}
