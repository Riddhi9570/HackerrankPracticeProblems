def is_leap(year):
    leap = False
    if not year % 100 :
        if not year % 400 :
            leap = True
    elif not year % 4 :
        leap = True    
    return leap

year = int(input())
print(is_leap(year))