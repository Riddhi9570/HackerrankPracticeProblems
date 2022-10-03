/*
Problem Link : https://www.hackerrank.com/challenges/accessing-inherited-functions/problem
Problem : Accessing Inherited Functions
Category: C++ Inheritance
Difficulty: Medium
Max Score: 30
*/
#include <iostream>
using namespace std;
class A
{
public:
    A()
    {
        callA = 0;
    }

private:
    int callA;
    void inc()
    {
        callA++;
    }

protected:
    void func(int &a)
    {
        a = a * 2;
        inc();
    }

public:
    int getA()
    {
        return callA;
    }
};
class B
{
public:
    B()
    {
        callB = 0;
    }

private:
    int callB;
    void inc()
    {
        callB++;
    }

protected:
    void func(int &a)
    {
        a = a * 3;
        inc();
    }

public:
    int getB()
    {
        return callB;
    }
};
class C
{
public:
    C()
    {
        callC = 0;
    }

private:
    int callC;
    void inc()
    {
        callC++;
    }

protected:
    void func(int &a)
    {
        a = a * 5;
        inc();
    }

public:
    int getC()
    {
        return callC;
    }
};
/* Accessing Inherited Functions in C++ - Hacker Rank Solution START */
class D : public A, B, C
{
    int val;

public:
    // Initially val is 1
    D()
    {
        val = 1;
    }
    // Implement this function
    void update_val(int new_val)
    {
        int a = new_val;
        while (new_val != 0)
        {
            if (val == a)
                break;
            if (new_val % 2 == 0)
            {
                A::func(val);
                new_val /= 2;
            }
            else if (new_val % 3 == 0)
            {
                B::func(val);
                new_val /= 3;
            }
            else if (new_val % 5 == 0)
            {
                C::func(val);
                new_val /= 5;
            }
        }
    }
    // For Checking Purpose
    void check(int); // Do not delete this line.
};
/* Accessing Inherited Functions in C++ - Hacker Rank Solution END */
void D::check(int new_val)
{
    update_val(new_val);
    cout << "Value = " << val << endl
         << "A's func called " << getA() << " times " << endl
         << "B's func called " << getB() << " times" << endl
         << "C's func called " << getC() << " times" << endl;
}
int main()
{
    D d;
    int new_val;
    cin >> new_val;
    d.check(new_val);
}