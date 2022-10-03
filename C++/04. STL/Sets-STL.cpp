/*
Problem Link : https://www.hackerrank.com/challenges/cpp-sets/problem?isFullScreen=true
Problem :Sets-STL
Category: C++ STL
Difficulty: Easy
Max Score: 15
*/
#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <set>
#include <algorithm>
using namespace std;


int main() { 
    int q;
    cin>>q;
    set<int>s;
    for(int i=0;i<q;i++){
        int y,x;
        cin>>y>>x;
        if(y==1){
            s.insert(x);
        }else if(y==2){
            s.erase(x);
        }else{
            set<int>::iterator itr=s.find(x);
            if(itr==s.end()){
                cout<<"No"<<"\n";
            }else{
                cout<<"Yes"<<"\n";
            }
        }
    }
    return 0;
}
