// Problem Link :https://www.hackerrank.com/challenges/equal/problem?isFullScreen=true
// Score: 30
// Difficulty: Medium

#include<cassert>
#include<iostream>
#include<algorithm>
using namespace std;
    
int T, N;
int d[100010];
    
int main() {
    cin >> T;
    assert(T <= 100);
    while(T--) {
        cin >> N;
        assert(N <= 10000);
        for(int i = 0; i < N; i++) 
        {cin >> d[i]; assert(d[i] < 1000);}
        int M = *min_element(d, d + N);//finding the minimum element
        int r = 1e9; //just an upper limit
        for(int t = M - 4; t <= M; t++) {
            int s = 0;
            for(int i = 0; i < N; i++) {
                int D = d[i] - t;
                s += D / 5, D %= 5;//we are trying to find the number of times the given number be divivisible by 5->gives no of opertations
                s += D / 2, D %= 2;//same with 2 and 1 from the remainder
                s += D;
            }
            r = min(r, s); //just an upperlimit for testing
        }
        cout << r << endl;
    }
    return 0;
}
