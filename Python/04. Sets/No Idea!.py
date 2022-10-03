 #Problem Link : https://www.hackerrank.com/challenges/no-idea/problem?isFullScreen=true
 # Problem : No Idea!
 # Language : Python
 # Subdomain : Sets
 # Max Score : 50
 # Difficulty : Medium

io = input().split()
m = int(io[0])
n = int(io[1])

storage = list()
count = 0

storage = list(map(int, input().strip().split()))

A = set(map(int, input().strip().split()))
B = set(map(int, input().strip().split()))

for i in storage:
    if i in A:
        count = count+1
    if i in B:
        count = count-1

print(count)
