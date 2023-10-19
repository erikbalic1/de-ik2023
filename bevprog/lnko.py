# legnagyobb kozos oszto algoritmus - euklideszi algoritmus
def lnko(a, b):
    while a % b != 0:
        c = a % b
        a = b
        b = c
    print(b)
# vege az algoritmusnak
a = int(input()) # add meg az elso szamot
b = int(input()) # add meg a masodik szamot
lnko(a, b) # elohivjuk a fuggvenyt a ket szamra
