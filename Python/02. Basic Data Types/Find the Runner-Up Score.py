# Problem: https://www.hackerrank.com/challenges/find-second-maximum-number-in-a-list/problem
# Score: 10
# Difficulty: Easy

if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())

list_arr = list(arr)

print(
    max([x for x in list_arr if x != max(list_arr)])
)
