// Problem Link: https://www.hackerrank.com/challenges/balanced-brackets/problem
// Problem: Balance Brackets
// Language: C++
// Subdomain: Data Structures
// Difficulty: Medium
// Max Score: 25

#include <bits/stdc++.h>

using namespace std;

string ltrim(const string &);
string rtrim(const string &);

/*
 * Complete the 'isBalanced' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

unordered_map<char, int> mp={{'{', -3}, {'[', -2}, {'(', -1},{')', 1}, {']', 2},{'}', 3}};

string isBalanced(string s){
    stack<char> st;
    for(auto c: s){
        if(mp[c]<0){
            st.push(c);
        }
        else{
            if(st.empty()) return "NO";
            if(mp[st.top()]+mp[c]!=0) {
                return "NO";
            }
            st.pop();
        }
    }
    if(st.empty()) return "YES";
    return "NO";
}
int main()
{
    ofstream fout(getenv("OUTPUT_PATH"));

    string t_temp;
    getline(cin, t_temp);

    int t = stoi(ltrim(rtrim(t_temp)));

    for (int t_itr = 0; t_itr < t; t_itr++) {
        string s;
        getline(cin, s);

        string result = isBalanced(s);

        fout << result << "\n";
    }

    fout.close();

    return 0;
}

string ltrim(const string &str) {
    string s(str);

    s.erase(
        s.begin(),
        find_if(s.begin(), s.end(), not1(ptr_fun<int, int>(isspace)))
    );

    return s;
}

string rtrim(const string &str) {
    string s(str);

    s.erase(
        find_if(s.rbegin(), s.rend(), not1(ptr_fun<int, int>(isspace))).base(),
        s.end()
    );

    return s;
}
