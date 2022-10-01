# Problem: https://www.hackerrank.com/challenges/finding-the-percentage/problem?isFullScreen=true
# Score: 10
# Difficulty : Easy

if __name__ == '__main__':
    n = int(input())
    student_marks = {}
    for _ in range(n):
        name, *line = input().split()
        scores = list(map(float, line))
        student_marks[name] = scores
    query_name = input()
final = list(student_marks[query_name])
percentage = sum(final)/len(final)
print("%.2f" % percentage)