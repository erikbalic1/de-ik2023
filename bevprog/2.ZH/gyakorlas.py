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
