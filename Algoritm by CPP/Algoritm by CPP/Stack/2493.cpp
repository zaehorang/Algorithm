//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/24.
//  https://www.acmicpc.net/problem/2493


#include <bits/stdc++.h>
using namespace std;
#define X first
#define Y second

int N;
stack<pair<int,int>> tower;

int main() {
  ios_base::sync_with_stdio(0);
  cin.tie(0);

  cin >> N;
    
  tower.push({100000001, 0});  // 첫번째 탑의 높이를 (최대 높이 + 1)로 설정
  for (int i = 1; i <= N; i++) {
    int height;
    cin >> height;
    while (tower.top().X < height)
      tower.pop();
    cout << tower.top().Y << " ";
    tower.push({height, i});
  }
}
