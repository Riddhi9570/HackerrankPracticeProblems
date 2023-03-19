string = input()
char = string[0]
x = 1
for i in range(1, len(string)):
    if char == string[i]:
        x += 1
    else:
        print(f'({x}, {char})', end=' ')
        char = string[i]
        x = 1
print(f'({x}, {char})', end=' ')
