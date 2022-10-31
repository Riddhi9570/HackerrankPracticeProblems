
#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */ 
    
    // Taking Input of the length of the Vector Array
    int length;
    cin >> length;
    
    // Taking the Integer array vector
    vector<int>arr;
    
    // Taking input of the Array
    for(int i=0;i<length;i++)
    {
    // In this For loop initialize an integer x and take the input n times and push back     that integer to the vector
        int x;
        cin >> x;
        arr.push_back(x);
    }
    
    // Now sort the vector using sort() function
    sort(arr.begin(),arr.end());
    
    // Now give the output of the sorted array
     for(int i=0;i<length;i++)
     {
        cout << arr[i] << " ";
     }
     
     
    return 0;
}
