//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/16.
//  https://www.acmicpc.net/problem/1406

import Foundation



//MARK: - 양방향 연결리스트로 풀려고 했지만 일단 포기..

//class Node: Equatable {
//    static func == (lhs: Node, rhs: Node) -> Bool {
//        lhs.data == rhs.data
//    }
//    
//    let data: Character?
//    var next: Node?
//    var prev: Node?
//    
//    init(data: Character?) {
//        self.data = data
//        self.next = self
//        self.prev = self
//    }
//}
//
//struct List {
//    let head = Node(data: nil)  // 헤드 노드
//    
//    func splice(a: Node, b: Node, x: Node) {
//        guard let aPrev = a.prev, let bNext = b.next, let xNext = x.next else { return }
//        
//        aPrev.next = bNext
//        bNext.prev = aPrev
//        
//        x.next = a
//        a.prev = x
//        
//        xNext.prev = b
//        b.next = xNext
//        
//    }
//    
//    func append(data: Character) {
//        let newNode = Node(data: data)
//        
//        guard let headPrev = head.prev else { return }
//        self.splice(a: newNode, b: newNode, x: headPrev)
//    }
//    
//    func insert(data: Character, x: Node) {
//        let newNode = Node(data: data)
//        
//        self.splice(a: newNode, b: newNode, x: x)
//    }
//    
//    func remove(x: Node) {
//        if x != head {
//            x.prev?.next = x.next
//            x.next?.prev = x.prev
//        }
//    }
//    
//    func printList(){
//        var current = head.next
//        while let data = current?.data {
//            print("\(data)", terminator: "")
//            current = current?.next
//        }
//    }
//}
//
//
//var list = List()
//if let str = readLine() {
//    for a in str {
//        list.append(data: a)
//    }
//}
//var cursor = list.head.prev
//
//var n = Int(readLine()!)!
//
//for _ in 1...n {
//    let a = readLine()!
//    
//    if a == "L" {
//        if cursor != list.head {
//            cursor = cursor?.prev
//        }
//    } else if a == "D" { //❗️❗️❗️
//        if cursor != list.head.prev {
//            cursor = cursor?.next
//        }
//    } else if a == "B" {
//        if cursor != list.head {
//            list.remove(x: cursor!)
//            cursor = cursor?.prev
//        }
//    } else {
//        list.insert(data: a.last!, x: cursor!)
//        cursor = cursor?.next
//    }
//
//}
//
//list.printList()
