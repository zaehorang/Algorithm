//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/13.
//  https://www.acmicpc.net/problem/2577

#include <bits/stdc++.h>
using namespace std;

int main(void){
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int a, b, c;
    int d[10]={};
    
    cin >> a >> b >> c;
    
    int t=a*b*c;
    
    // swift는 문자열로 순회를 돌 수 있지만 cpp는 불가능
    while (t>0) {
        d[t%10]++;
        t/=10;
    }
    
    for (int i=0; i<10; i++) cout << d[i] << '\n';
    
}
