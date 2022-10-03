"""

//-- # Problem : https://www.hackerrank.com/challenges/swap-case/problem

//-- # Score : 10

//-- # Difficulty : Easy

"""


def swap_case(s):
    """
    Swap case method: map the input string
    changing each letter to its opposite case,
    after that, convert the output to string
    """
    return "".join(map(lambda l: l.upper() if l.islower() else l.lower(), s))


if __name__ == "__main__":
    s = input()
    result = swap_case(s)
    print(result)
