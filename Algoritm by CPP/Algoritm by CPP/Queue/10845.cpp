//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/20.
//  https://www.acmicpc.net/problem/10845

#include <bits/stdc++.h>
using namespace std;

int main(void) {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    queue<int> Q;
    
    int n;
    cin >> n;
    
    while(n--){
        string str;
        cin >> str;
        
        if(str=="push"){
            int n;
            cin >> n;
            Q.push(n);
        }
        else if(str=="pop"){
            if(Q.empty()) cout << -1 << '\n';
            else{
                cout << Q.front() << '\n';
                Q.pop();
            }
        }
        else if(str=="size") cout << Q.size() << '\n';
        else if(str=="empty") cout << Q.empty() << '\n';  // true는 1, false는 0
        else if(str=="front"){
            if(Q.empty()) cout << -1 << '\n';
            else{
                cout << Q.front() << '\n';
            }
        }
        else{ // back
            if(Q.empty()) cout << -1 << '\n';
            else{
                cout << Q.back() << '\n';
            }
        }
        
    }
    
}
