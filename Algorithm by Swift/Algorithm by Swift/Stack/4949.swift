//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/25.
//  https://www.acmicpc.net/problem/4949

//MARK: - 처음 답안 코드
//while let str = readLine(), str != "." {
//    
//    var s = [Character]()  // stack
//    
//    for char in str {
//        
//        if char == "[" || char == "(" {
//            s.append(char)
//        } else if let last = s.last {
//            if (last == "[" && char == ")") || (last == "(" && char == "]") { // 닫는 괄호와 스택의 top 괄호가 짝이  n아니라면
//                break
//            } else if last == "[" && char == "]" {  // 짝이 맞다면
//                s.removeLast()
//            } else if  last == "(" && char == ")" {
//                s.removeLast()
//            }
//        } else if char == "]" || char == ")" {  // 닫는 괄호가 먼저 나오면
//            s.append(char)  //  스택에 push하고 반복문 종료
//            break
//        }
//    }
//    
//    // 스택에 괄호 유무 확인
//    if !s.isEmpty {
//        print("no")
//    } else {
//        print("yes")
//    }
//
//}

//MARK: - 더 짧게 구성

while let str = readLine(), str != "."  {
    
    var s = [Character]()  // stack
    var isValid = true
    
    for a in str {
        if a == "(" || a == "[" {
            s.append(a)
        } else if a == ")" {
            if s.isEmpty || s.last != "(" {
                isValid = false
                break
            } else {
                s.removeLast()
            }
                
        } else if a == "]" {
            if s.isEmpty || s.last != "[" {
                isValid = false
                break
            } else {
                s.removeLast()
            }
        }
    }
    
    if s.isEmpty && isValid {
        print("yes")
    } else {
        print("no")
    }
    
}
