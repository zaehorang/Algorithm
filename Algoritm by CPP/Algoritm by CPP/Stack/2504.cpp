//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/29.
//  https://www.acmicpc.net/problem/2504

#include <bits/stdc++.h>
using namespace std;

stack<char> s;

int main(void){
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    string str;
    cin >> str;
    
    int ans = 0;
    int n = 1;
    
    for(int i = 0; i < str.size(); i++){
        if(str[i] == '('){
            n *= 2;
            s.push(str[i]);
        }
        else if(str[i] == '['){
            n *= 3;
            s.push(str[i]);
        } 
        else if(str[i] == ')'){
            if(s.empty() || s.top() != '('){
                cout << 0;
                return 0;
            }
            if(str[i-1] == '(') ans += n;
            n /= 2;
            s.pop();
        }
        else{ // ']'
            if(s.empty() || s.top() != '['){
                cout << 0;
                return 0;
            }
            if(str[i-1] == '[') ans += n;
            n /= 3;
            s.pop();
        }
    }
    if(s.empty()) cout << ans;
      else cout << 0;
}
