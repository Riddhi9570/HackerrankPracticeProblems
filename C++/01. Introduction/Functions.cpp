// Problem : Functions 
// Problem Link : https://www.hackerrank.com/challenges/c-tutorial-functions/problem
// Difficulty: Easy
// Max Score: 10
#include <iostream>
using namespace std;

int max_of_four(int a, int b, int c, int d) {
    return max(a, max(b, max(c, d)));
}

int main() {
    int a, b, c, d;
    cin>>a>>b>>c>>d;
    int ans = max_of_four(a, b, c, d);
   cout<<ans;
    
    return 0;
}