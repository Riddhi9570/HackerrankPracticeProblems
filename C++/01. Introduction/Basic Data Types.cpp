// Problem : Basic Data Types 
// Problem Link : https://www.hackerrank.com/challenges/c-tutorial-basic-data-types/problem?isFullScreen=true
// Language: CPP
// Difficulty: Easy
// Max Score: 10
// ..............................................................................................................................................
// Input Format of this Problem:
//              Input consists of the following space-separated values: int, long, char, float, and double, respectively.

// Output format of this Problem:
//              Print each element on a new line in the same order it was received as input.
//              Note that the floating point value should be correct up to 3 decimal places and the double to 9 decimal places.

//  ..............................................................................................................................................
// Here is the Code for this Problem:


#include <iostream>
#include <cstdio>
using namespace std;

int main() {
        int a;
        long long int b;
        char c;
        float d;
        double e;

scanf("%d %lld %c %f %lf",&a,&b,&c,&d,&e);
printf("%d\n%lld\n%c\n%f\n%lf",a,b,c,d,e);

// you can also use the below code to take input and give output
  
// cin>>a>>b>>c>>d>>e;
// cout<<a<<endl<<b<<endl<<c<<endl<<d<<endl<<e;
  
    return 0;
}
