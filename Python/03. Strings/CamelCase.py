#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'camelcase' function below.
#
# The function is expected to return an INTEGER.
# The function accepts STRING s as parameter.
#


def camelcase(s):
    res = 1
    for let in s:
        if let.isupper():
            res += 1
    
    if not s:
        res = 0
    
    return res


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = camelcase(s)

    fptr.write(str(result) + '\n')

    fptr.close()
