//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/12.
//  https://www.acmicpc.net/problem/3273

#include <bits/stdc++.h>
using namespace std;

int a[1000001];

// 각 자연수의 존재 여부를 저장하는 배열, 예외처리 하기 싫어서 최대 크기로 잡음
int occur[2000001];
int n, x;

int main(void){
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int ans = 0;
    
    cin >> n;
    
    for(int i = 0; i < n; i++) cin >> a[i];
    cin >> x;
    
    // 1은 true, 0은 false
    for (int i = 0; i < n; i++) {
        // x-a[i]가 존재하는지 확인
        if(x-a[i] > 0 && occur[x-a[i]]) ans++;
        occur[a[i]]++;
    }
    cout << ans;
}
