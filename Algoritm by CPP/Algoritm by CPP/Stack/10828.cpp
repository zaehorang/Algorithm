//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/20.
//  https://www.acmicpc.net/problem/10828

#include <bits/stdc++.h>
using namespace std;

int main(void) {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    stack<int> S;
    
    int n;
    cin >> n;
    
    while(n--){
        string c;
        cin >> c;
        
        if(c=="push"){
            int n;
            cin >> n;
            S.push(n);
        }
        else if(c=="pop"){
            if(S.empty()) cout << -1 << '\n';
            else{
                cout << S.top() << '\n';
                S.pop();
            }
        }
        else if(c=="size") {
              cout << S.size() << '\n';
        }
        else if(c=="empty"){
            cout << int(S.empty()) << '\n';
        }
        else{
            if(S.empty()) cout << -1 << '\n';
            else{
                cout << S.top() << '\n';
            }
        }
    }
    
}
