// Problem: Vector-Sort 
// Problem link: https://www.hackerrank.com/challenges/vector-sort/problem?isFullScreen=true
// Language: CPP
// Difficulty: Easy
// Max Score: 10
// ......................................................................................................................................

// Vector : Vectors are sequence containers representing arrays that can change in size.

// Declaration of a Vector: vector<int>v; (creates an empty vector of integers)

// Size of a vector: int size=v.size();

// Pushing an integer into a vector:  v.push_back(x);(where x is an integer.The size increases by 1 after this.)

// Popping the last element from the vector:  v.pop_back(); (After this the size decreases by 1)

// Sorting a vector:  sort(v.begin(),v.end()); (Will sort all the elements in the vector)

// .......................................................................................................................................

// Input Format :
//                The first line of the input contains N ,where N is the number of integers. The next line contains  integers.

// Output Format : 
//                Print the integers in the sorted order one by one in a single line followed by a space.



// Solution of the Problem : 

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
