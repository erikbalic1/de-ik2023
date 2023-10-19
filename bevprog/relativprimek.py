# ket szam relativ prim vizsgalata
a = int(input())
b = int(input())
while a != b:
    if a > b:
        a = a - b
    else:
        b = b - a
if a == 1:
    print("Relativ primek")
else:
    print("Nem relativ primek")
