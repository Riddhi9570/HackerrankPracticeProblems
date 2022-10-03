def print_formatted(number):
    decimal = []
    octal = []
    hexadec = []
    binary = []
    
    for x in range(1, number+1):
        decimal.append(str(x))
        octal.append(oct(x)[2:])
        h = hex(x)[2:]
        if h.isalnum():
            h = h.upper()
        hexadec.append(h)
        binary.append(bin(x)[2:])
    
    bin_space = len(binary[-1])
    
    for x in range(number):
        for y in range(bin_space - len(decimal[x])):
            print(' ', end='')
        print(decimal[x], end=' ')
        for y in range(bin_space - len(octal[x])):
            print(' ', end='')
        print(octal[x], end=' ')
        for y in range(bin_space - len(hexadec[x])):
            print(' ', end='')
        print(hexadec[x], end=' ')
        for y in range(bin_space - len(binary[x])):
            print(' ', end='')
        print(binary[x], end=' ')
        
        print()

if __name__ == '__main__':
