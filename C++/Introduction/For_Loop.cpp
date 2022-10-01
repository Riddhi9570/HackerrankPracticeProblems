// Problem Link :https://www.hackerrank.com/challenges/c-tutorial-for-loop/problem
//Difficulty : Easy
//Max Score:10
#include<bits/stdc++.h>
using namespace std;
int main() {
    // taking input of a ,b 
    int a,b;   
    cin>>a>>b;
    // initializing vector of strings named hashmap to store word value of 1 to 9 int values 
    vector<string>hashmap{"one","two","three","four","five","six","seven","eight","nine"};
    // making a for loop from a to b and checking if i is between i to 9 then preint corresponding word value of i 
    // if i is greater than i then check if i is even or odd.
    for(int i=a;i<=b;i++)
    {
        if(1<=i and i<=9)
        {
            cout<<hashmap[i-1]<<endl;
        }
        else
        {
            if((i&1)==0){
                cout<<"even"<<endl;
            }
            else
            {
                cout<<"odd"<<endl;
            }
        }
    }
    return 0;
}
