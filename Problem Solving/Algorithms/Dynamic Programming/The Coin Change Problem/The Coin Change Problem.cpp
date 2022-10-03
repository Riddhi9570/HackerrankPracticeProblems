// Problem Link :https://www.hackerrank.com/challenges/coin-change/problem?isFullScreen=true
// Score: 60
// Difficulty: Medium

#include<bits/stdc++.h>
using namespace std;

int c[52];
int numCoins;
long long table[52][252];//memorization table
bool calculated[52][252];

// this problem is solved using recurision tree method

long long solve(int i, int make)
{
    if(make<0) return 0; //exit tree-node#0
    if(make==0)return 1; //exit tree-node#1
    if(i > numCoins) return 0; 
    if(calculated[i][make] == false){ //eliminating overlap
        table[i][make] = solve(i, make - c[i]) + solve(i+1, make); //recursion function  //logic is you care counting minimum possible ways from scratch
        calculated[i][make] = true;
    }
    return table[i][make];
}
int main(){

    int make;
    cin>>make>>numCoins;
    for(int i=1;i<=numCoins;i++){
        cin>>c[i];
    }
    cout<<solve(1, make)<<endl;
    return 0;
}
