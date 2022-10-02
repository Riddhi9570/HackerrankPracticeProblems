n = int(input())
arr = list(map(int, input().split()))
z =max(arr)
arr.sort(reverse=True)
for x in arr:
    if x != max(arr):
        print(x)
        break
