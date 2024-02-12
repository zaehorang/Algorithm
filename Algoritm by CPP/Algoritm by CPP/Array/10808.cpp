//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/12.
//  https://www.acmicpc.net/problem/10808

#include <bits/stdc++.h>
using namespace std;

int freq[26]; // 전역 변수로 생성 시 0으로 채워진다.

int main(void) {
  ios::sync_with_stdio(0);
  cin.tie(0);
    
  string s;
  cin >> s;
    
  for(auto c : s)  // 타입 추론 "auto"
    freq[c-'a']++; // Swift에서는 문자와 문자열간의 산술 연산자 지원 x
    
  for(int i = 0; i < 26; i++)
    cout << freq[i] << ' ';
}
