//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/13.
//  https://www.acmicpc.net/problem/1475

#include <bits/stdc++.h>
using namespace std;

int main(void) {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    int arr[10]={}, ans=0;
    
    cin >> n;
    
    while (n>0) {
        arr[n%10]++;
        n/=10;
    }
    
    for(int i=0; i<10; i++) {
        if (i==6 || i==9) continue;
        ans = max(ans, arr[i]);
    }
    
    // ceil메서드는 double 타입에 가능
    ans = max(ans, (arr[6]+arr[9]+1)/2);
    
    cout << ans;

}
