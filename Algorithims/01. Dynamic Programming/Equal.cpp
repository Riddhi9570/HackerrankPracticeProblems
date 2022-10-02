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
        int M = *min_element(d, d + N);
        int r = 1e9;
        for(int t = M - 4; t <= M; t++) {
            int s = 0;
            for(int i = 0; i < N; i++) {
                int D = d[i] - t;
                s += D / 5, D %= 5;
                s += D / 2, D %= 2;
                s += D;
            }
            r = min(r, s);
        }
        cout << r << endl;
    }
    return 0;
}