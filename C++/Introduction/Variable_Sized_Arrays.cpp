#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() { 
    int n,q;
    cin>>n>>q;
    vector<vector<int>> varlength;
    for(int i=0;i<n;i++){
        int len;
        cin>>len;
        vector<int> curind(len);
        for(int j=0;j<len;j++){
            cin>>curind[j];
        }
        varlength.push_back(curind);
    }
    while(q--){
        int outerind,innerind;
        cin>>outerind>>innerind;
        cout<<varlength[outerind][innerind]<<"\n";
    }
    return 0;
}
