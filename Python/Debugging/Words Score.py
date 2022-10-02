#Problem Statement- https://www.hackerrank.com/challenges/words-score/problem
#Score-10
#Difficulty- Medium


def is_vowel(letter):
    return letter in ['a', 'e', 'i', 'o', 'u', 'y']

def score_words(words):
    score = 0
    for word in words:
        num_vowels = 0
        for letter in word:
            if is_vowel(letter):
                num_vowels += 1
        if num_vowels % 2 == 0:
            score += 2
        else:
        # Words Score in Python - Hacker Rank Solution START
            score += 1
        # Words Score in Python - Hacker Rank Solution END
    return score


n = int(input())
words = input().split()
print(score_words(words))