# maganhangzo eltavolitasa sztringbol
import sys
for s in sys.stdin:
    z = ''
    for c in s.strip():
        if c.lower() not in "aeiou":
            z = z + c
    print(z)
