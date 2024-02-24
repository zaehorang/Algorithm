//
//  main.swift
//  Algorithm by Swift
//
//  Created by zaehorang on 2024/02/23.
//  https://www.acmicpc.net/problem/2493



//MARK: - 1st. 이중 for문 -> 시간초과
// 뒤에서부터 순회
// 본인보다 높은 탑이 나올 때까지 순회
/*
let n = Int(readLine()!)!

var tops = readLine()!.split(separator: " ").map { Int($0)! }

var ans = [Int]()

// 여기 tops는 복사된 건가?
for a in tops.reversed() {
    tops.removeLast()  // 자기 자신은 비교하지 않기 위함.
    
    if tops.isEmpty {  // 마지막 요소
        ans.append(0)
        break
    }
    
    var i = tops.count
    
    for b in tops.reversed() {  // 자리수를 출력해야하기 때문에 인덱스 활용 + 뒤에서부터 순회
        if b >= a {
            ans.append(i) // 인덱스는 0부터 시작
            break
        }
        i -= 1
        
        if i == 0 {
            ans.append(0)
        }
    }
}

print(ans.reversed().map { String($0) }.joined(separator: " "))
 */

//MARK: - 2nd. 스택을 이용
// 앞에서부터 순회
// 높이가 높은 탑들을 스택에 계속 보관
/*
var n = Int(readLine()!)!

var tops = readLine()!.split(separator: " ").map { Int($0)! }

var stack = [[0, tops[0]]]

var ans = "0 "

for i in 1..<n {
    while !stack.isEmpty, stack.last![1] <= tops[i] {  // 스택에 탑이 담겨 있는 동안 높이 비교
        stack.removeLast()
    }
    
    if stack.isEmpty { // 자신보다 높은 탑이 없으면
        ans += "0 "
        
    } else {  // 자신보다 높은 탑이 스택에 남아 있으면
        ans += "\(String(stack.last![0] + 1)) "  // 인덱스는 0부터, 탑들의 순서는 1부터 시작
    }
    
    stack.append([i, tops[i]])
}

print(ans)
*/

//MARK: - 3nd. 스택을 이용
// 뒤에서부터 순회
// 자기보다 큰 탑을 못 만난 탑들을 스택에 보관
// 정답 배열을 미리 만들어 두고, 인덱스를 활용해 정답자리에 답 채우기

var n = Int(readLine()!)!
let tops = readLine()!.split(separator: " ").map { Int($0)! }
var s = [Int]()

var ans = [Int](repeating: 0, count: n)

for i in (0..<n).reversed() {
    while !s.isEmpty && tops[s.last!] < tops[i] {
        let index = s.removeLast()
        ans[index] = i + 1  // 인덱스가 아닌 순서
    }
    s.append(i)
}

print(ans.map { String($0) }.joined(separator: " "))
