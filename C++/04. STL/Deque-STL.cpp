// # Problem : https://www.hackerrank.com/challenges/deque-stl/problem?isFullScreen=false
// # Score : 50
// # Difficulty : Medium

#include <iostream>
#include <deque> 
using namespace std;

void printKMax(int arr[], int n, int k){
	//Write your code here.
    
    //variable for the max element in the current k elements
    int maxim = 0;
    
    //create a deque to see current k elements
    deque<int> curr;
    
    //get first k elements and put them in the deque
    for(int i=0;i<k;i++){
        curr.push_back(arr[i]);
        if(arr[i]>maxim){
            maxim = arr[i];
        }
    }
    
    cout << maxim << " ";
    
    int i = k;
    while(i<n){
        //gets current popped element
        int front = curr.front();
        
        //if we removed the max element, we need to find the new max with iteration
        if(front==maxim){
            maxim = 0;
            for(int j=i;j>i-k;j--){
                if(arr[j]>maxim){
                    maxim = arr[j];
                }
            }
        }
        
        //remove last element and add current element
        curr.pop_front();
        curr.push_back(arr[i]);
        
        //checks  if current added element is greater than the current max
        if(arr[i]>maxim){
            maxim = arr[i];
        }
        
        //prints the current max element
        cout << maxim << " ";
        
        //increments  the current index we are on
        i++;
    }
    
    cout << endl;
    
}

int main(){
  
	int t;
	cin >> t;
	while(t>0) {
		int n,k;
    	cin >> n >> k;
    	int i;
    	int arr[n];
    	for(i=0;i<n;i++)
      		cin >> arr[i];
    	printKMax(arr, n, k);
    	t--;
  	}
  	return 0;
}
