
//-- # Problem : https://www.hackerrank.com/challenges/string-validators/problem

//-- # Score : 10

//-- # Difficulty : Easy

if __name__ == "__main__":
    s = input()
    #it checks all the characters of a string alphanumeric
    print(any(i.isalnum() for i in s))
    #it checks all the characters of a string are alphabetical
    print(any(i.isalpha() for i in s))
    #it checks all the characters of a string are digits
    print(any(i.isdigit() for i in s))
    #it checks all the characters of a string are lowercase characters
    print(any(i.islower() for i in s))
    #it checks all the characters of a string are uppercase characters
    print(any(i.isupper() for i in s))

