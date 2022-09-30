// below is the solution to arrays introduction problem: https://www.hackerrank.com/challenges/arrays-introduction/problem?isFullScreen=true
#include <iostream>

using namespace std;

int main(int argc, char const *argv[])
{
    int N;
    cin>>N; //taking N as input
    int arr[N]; //declaring an array of size N
    for(int i=0;i<N;i++){
        cin>>arr[i]; //taking input the elements of the array
    }
    for(int i=N-1;i>=0;i--){
        cout<<arr[i]<<" ";
    }
    return 0;
}
