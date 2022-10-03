#!/bin/python3

import math
import os
import random
import re
import sys

def superDigit(n, k):
    if int(n) < 10 : 
        return int(n)
    sm = 0
    for i in str(n):
        sm += int(i)
    
    sm*=k
    
    return superDigit(sm, 1)
  
 
if __name__ == "__main__" :
	n, k = input().split()
	k = int(k)
	print("Super Digit is", superDigit(n, k))
