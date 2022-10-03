#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'powerSum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER X
#  2. INTEGER N
#

def solution(arr,x,n):
    if x==0:
        return 1
    if len(arr)==0:
        return 0 
    if x<0:
        return 0
    sol=solution(arr[1:],x-arr[0]**n,n)+solution(arr[1:],x,n)
    return sol
def powerSum(X, N):
    baseIndex=[]
    for i in range(int(pow(X,(1/N)))):
        baseIndex.append(i+1)
    answer=solution(baseIndex,X,N)
    return answer    
        
    

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    X = int(input().strip())

    N = int(input().strip())

    result = powerSum(X, N)

    fptr.write(str(result) + '\n')

    fptr.close()
