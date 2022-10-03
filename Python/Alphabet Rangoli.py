def print_rangoli(size):
    n = size + (size - 1)
    m = n + (n - 1)
    i = 1
    for x in range(1, size + 1):
        for y in range(1, int((m - i)/2) + 1):
            print('-', end='')
        for y in range(1, x+1):
            print(chr(97 + size - y), end='')
            if y != x:
                print('-', end='')
        for y in range(x, 1, -1):
            print('-', end='')
            print(chr(97 + size - y + 1), end='')
        for y in range(1, int((m - i)/2) + 1):
            print('-', end='')
        i += 4
        print()
    i -= 4
    for x in range(size - 1, 0, -1):
        i -= 4
        for y in range(1, int((m - i)/2) + 1):
            print('-', end='')
        for y in range(1, x+1):
            print(chr(97 + size - y), end='')
            if y != x:
                print('-', end='')
        for y in range(x, 1, -1):
            print('-', end='')
            print(chr(97 + size - y + 1), end='')
        for y in range(1, int((m - i)/2) + 1):
            print('-', end='')
        print()

if __name__ == '__main__':
