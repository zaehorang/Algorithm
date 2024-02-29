//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/26.
//  https://www.acmicpc.net/problem/10799

#include <bits/stdc++.h>
using namespace std;

string s;
long long  ans = 0;
stack<char> st;
int main(void){
  ios::sync_with_stdio(0);
  cin.tie(0);
    
  cin >> s;
    
  int sz = s.length();
    
  for (int i = 0; i < sz; i++) {
    if (s[i]=='(')  // 문자열의 서브스크립트 구문 활용
      st.push(s[i]);
    else {
      if (s[i-1] == '(') { // 레이저일 경우
        st.pop();
        ans+=st.size();
      }
      else { // s[i-1] == ')' // 쇠가 끊는 경우
        st.pop();
        ans++;
      }
    }
  }
  cout << ans << "\n";
  return 0;
}
