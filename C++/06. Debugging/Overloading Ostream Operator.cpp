// Problem link: https://www.hackerrank.com/challenges/overloading-ostream-operator/problem?isFullScreen=true
// Problem: Overloading Ostream Operator
// Language: C++
// Subdomain: Debugging
// Score: 20
// Difficulty: Medium

#include <iostream>

using namespace std;

class Person
{
public:
    Person(const string &first_name, const string &last_name) : first_name_(first_name), last_name_(last_name) {}
    const string &get_first_name() const
    {
        return first_name_;
    }
    const string &get_last_name() const
    {
        return last_name_;
    }

private:
    string first_name_;
    string last_name_;
};
ostream &operator<<(ostream &os, const Person &rhs)
{
    os << "first_name=" << rhs.get_first_name() << ",last_name=" << rhs.get_last_name();
    return os;
}
