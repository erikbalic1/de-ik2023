# maganhangzo eltavolitasa sztringbol
import sys
for s in sys.stdin:
    s1 = ''
    for c in s.strip():
        if c.lower() not in "aeiou":
            s1 = s1 + c
    print(s1)
