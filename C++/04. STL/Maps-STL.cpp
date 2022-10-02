/*
-- # Problem Link : https://www.hackerrank.com/challenges/cpp-maps/problem?isFullScreen=true
-- # Problem : Maps-STL
-- # Language : C++
-- # Subdomain : STL
-- # Max Score : 15
-- # Difficulty : Easy
*/

#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <set>
#include <map>
#include <algorithm>
using namespace std;

int main()
{
    ios::sync_with_stdio(0);
    cin.tie(0);

    int a, b, c;
    map<string, int> student;
    cin >> a;
    for (int i = 0; i < a; i++)
    {
        string s;
        cin >> b;
        if (b == 1)
        {
            cin >> s >> c;
            map<string, int>::iterator iter;
            iter = student.find(s); // if it donot find then it will store end location.
            if (iter != student.end())
            {
                iter->second += c;
            }
            else
            {
                student[s] = c;
            }
        }
        else if (b == 2)
        {
            cin >> s;
            student.erase(s);
        }
        else
        {
            cin >> s;
            map<string, int>::iterator it;
            it = student.find(s);
            if (it != student.end())
            {
                cout << it->second << endl;
            }
            else
            {
                cout << 0 << endl;
            }
        }
    }
    return 0;
}