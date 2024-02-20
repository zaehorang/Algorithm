//
//  main.cpp
//  Algoritm by CPP
//
//  Created by zaehorang on 2024/02/13.
//  https://www.acmicpc.net/problem/1406

#include <bits/stdc++.h>
using namespace std;

int main(void) {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    string str;
    cin >> str;

    // 연결 리스트
    list<char> L;

    // 처음 입력값 push
    for (auto c : str) L.push_back(c);

    // 커서
    auto cursor = L.end();

    int n;
    cin >> n;

    for (int i = 0; i < n; i++) {
        char edit;
        cin >> edit;

        if (edit == 'P') {
            char add;
            cin >> add;

            L.insert(cursor, add);
        }
        else if (edit == 'L') {
            if (cursor != L.begin()) cursor--;
        }
        else if (edit == 'D') {
            if (cursor != L.end()) cursor++;
        }
        else { // 'B'
            if (cursor != L.begin()) {
                cursor--;
                cursor = L.erase(cursor);
            }
        }
    }

    // 정답 출력
    for (auto c : L) cout << c;
    
}
