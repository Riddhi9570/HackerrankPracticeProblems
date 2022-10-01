// Problem Link: https://www.hackerrank.com/challenges/c-tutorial-class/problem
// Difficulty: Easy
// Max Score: 10

#include <iostream>
#include <sstream>
using namespace std;

class Student {
    int age;
    int standard;
    string first_name;
    string last_name;

   public:
    void set_age(int age_) { age = age_; }

    void set_standard(int standard_) { standard = standard_; }

    void set_first_name(string first_name_) { first_name = first_name_; }

    void set_last_name(string last_name_) { last_name = last_name_; }

    int get_age() { return age; }

    int get_standard() { return standard; }

    string get_first_name() { return first_name; }

    string get_last_name() { return last_name; }

    string to_string() {
        string age_ = std::to_string(age);
        string standard_ = std::to_string(standard);
        string result =
            age_ + "," + first_name + "," + last_name + "," + standard_;
        return result;
    }
};

int main() {
    int age, standard;
    string first_name, last_name;

    cin >> age >> first_name >> last_name >> standard;

    Student st;
    st.set_age(age);
    st.set_standard(standard);
    st.set_first_name(first_name);
    st.set_last_name(last_name);

    cout << st.get_age() << "\n";
    cout << st.get_last_name() << ", " << st.get_first_name() << "\n";
    cout << st.get_standard() << "\n";
    cout << "\n";
    cout << st.to_string();

    return 0;
}