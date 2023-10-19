# legkisebb kozos tobbszoros algoritmus
def lkkt(a, b):
    x = a * b # elmentjuk a ket szam szorzatat egy masik valtozoval
    while a != b:
        if a > b:
            a = a - b
        else:
            b = b - a
    y = b # elmentjuk a legnagyobb kozos oszto erteket egy valtozoba
    print(int(x / y)) # elosztjuk a ket szam szorzatat a kapott legnagyobb kozos osztova
a = int(input())
b = int(input())
lkkt(a, b) # elohivjuk a fuggvenyt a ket kert szamra 
