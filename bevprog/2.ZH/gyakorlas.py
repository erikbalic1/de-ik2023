# 1) szumma1 fuggveny: {i = 1}^n i*(i^2-1)
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
