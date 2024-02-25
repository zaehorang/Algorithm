//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/25.
//  https://www.acmicpc.net/problem/4949

#include <bits/stdc++.h>
using namespace std;

int main(void) {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    while(true){
        string a;
        getline(cin, a);
        if(a == ".") break;
        
        stack<char> s;
        bool isValid = true;
        
        for (auto c : a){
            if(c == '(' || c == '[') s.push(c);
            else if(c == ')'){
                if(s.empty() || s.top() != '('){ 
                    isValid = false;
                    break;
                }
                
                s.pop();
            }
            else if(c == ']'){
                if(s.empty() || s.top() != '['){
                    isValid = false;
                    break;
                }
                s.pop();
            }
            
        }
        
        if(isValid && s.empty()){
            cout << "yes" << '\n';
        } else cout << "no\n";
    }
}
