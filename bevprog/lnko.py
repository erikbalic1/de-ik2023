# legnagyobb kozos oszto algoritmus
def lnko(a, b):
    while a % b != 0:
        c = a % b
        a = b
        b = c
    print(b)
lnko(a, b)
# irj be az a es b helyere ertekeket!!!
