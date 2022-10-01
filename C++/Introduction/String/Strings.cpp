
#include <iostream>
#include <string>
using namespace std;

int main()
{

    string a;
    string b;

    cin >> a;
    cin >> b;

    cout << a.length() << " " << b.length() << endl;
    string c = a + b;
    cout << c << endl;
    string temp;
    temp = a[0];
    a[0] = b[0];
    b[0] = temp[0];
    cout << a << " " << b;

    return 0;
}