# 1) szumma1 fuggveny: 1-tol n-ig -> i*(i^2 - 1)

def szumma1(n):
    if n < 3:
      return "Nem megfelelo adat"
    elif n == 4:
        return n * (n * n - 1)
    else:
        return  n * (n * n - 1) + szumma1(n-1)
def main():
    n = int(input("Vegertek: "))
    print(szumma1(n))
if __name__ == "__main__":
    main()
    
#2) szumma2 fuggveny: k-tol indul n-ig -> i*(i^2 - 1)

def szumma2(k, n):
    if n < k:
        return "Nem megfelelo adat"
    elif n == k:
        return n * (n * n - 1)
    else:
        return  n * (n * n - 1) + szumma2(k, n - 1)
def main():
    k = int(input("Kezdoertek: "))
    n = int(input("Vegertek: "))
    print(szumma2(k, n))
if __name__ == "__main__":
    main()

# 3) majomszokas -> szotaros feladat, EOF-ig valo beolvasas

import sys
majmok = { }
for line in sys.stdin:
    data = line.split(";")
    if data[0] in majmok:
        majmok[data[0]] = majmok[data[0]] + int(data[1])
    else:
        majmok[data[0]] = int(data[1])
for i in sorted(majmok):
    print("{0}:{1}".format(i, majmok[i]))

# 4) fesztivalszezon feladat -> bonyolultabb szotaros feladat

import sys
eggyuttesek = { }
for line in sys.stdin:
    data = line.split(":")
    nevek = data[1].strip().split(",")
    for i in range(0, len(nevek)):
        if nevek[i] in eggyuttesek:
            eggyuttesek[nevek[i]] += 1
        else:
            eggyuttesek[nevek[i]] = 1
for i in sorted(eggyuttesek):
    print("{0}: {1}".format(i, eggyuttesek[i]))
    
# 5) utcahosszal jobb -> filebol valo olvasas, parameteresen

import sys
utcak = { }
with open(sys.argv[1]) as file:
    for line in file:
        adat = line.strip("\n").split(";")
        if adat[0] in utcak:
            utcak[adat[0]] += float(adat[2])
        else:
            utcak[adat[0]] = float(adat[2])
for kulcs, ertek in sorted(utcak,items(), key=lambda rend: (-rend[1], rend[0])):
    print(kulcs)

