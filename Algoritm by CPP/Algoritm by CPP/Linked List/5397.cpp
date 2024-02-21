//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/21.
//  https://www.acmicpc.net/problem/5397

#include <bits/stdc++.h>
using namespace std;

int main(){
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    cin >> n;
    
    while(n--){
        list<char> L = {};
        
        auto iter = L.begin();  // 커서
        
        string cmd;
        cin >> cmd;
        
        for(auto c : cmd){  // 빈 리스트일 경우, begin()과 end()는 같은 값
            if(c == '>'){
                if(iter != L.end()) iter++;
            }
            else if(c == '<'){
                if(iter != L.begin()) iter--;
            }
            else if(c == '-'){
                if(iter != L.begin()){
                    iter--;
                    iter = L.erase(iter);  // iter가 erase되면서 다음 값의 iter를 리턴
                }
            }
            else{
                L.insert(iter, c);  // inter 앞에 c를 추가
            }
        }
        
        for(auto c : L) cout << c;
        cout << '\n';
        
    }
    
}
