//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/22.
//  https://www.acmicpc.net/problem/10773

#include <bits/stdc++.h>
using namespace std;

int main(void){
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    stack<int> s;
    
    int n;
    cin >> n;
    
    while(n--){
        int a;
        cin >> a;
        
        if(a == 0) s.pop();
        else s.push(a);
    }
    
    int t = 0;
    
    // 스택에 쌓여 있는 모든 값을 더해줌
    while(!s.empty()){
        t += s.top();
        s.pop();
    }
    cout << t;
}
