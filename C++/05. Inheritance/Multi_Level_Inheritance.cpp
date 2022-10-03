/*
Problem Link : https://www.hackerrank.com/challenges/multi-level-inheritance-cpp/problem?isFullScreen=true
Problem : Multi_Level_Inheritance
Category: Inheritance
Difficulty: Easy
Max Score: 25
*/

#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

class Triangle{
	public:
		void triangle(){
			cout<<"I am a triangle\n";
		}
};

class Isosceles : public Triangle{
  	public:
  		void isosceles(){
    		cout<<"I am an isosceles triangle\n";
  		}
};

//Write your code here.
class Equilateral:public Isosceles{
    public:
        void equilateral(){
            cout<<"I am an equilateral triangle"<<"\n";
        }
};
int main(){
  
    Equilateral eqr;
    eqr.equilateral();
    eqr.isosceles();
    eqr.triangle();
    return 0;
}
