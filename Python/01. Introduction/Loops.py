# Solves python loops problem: https://www.hackerrank.com/challenges/python-loops/problem?isFullScreen=true
# Difficulty: Easy
# Max Score: 10

if __name__ == '__main__':
    n = int(input()) #Takes input
    for i in range(n): #Runs the loop from 0 to n-1
        print(i**2)  #prints their squares