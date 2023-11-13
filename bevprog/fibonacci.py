def fibonacci(n): # deklaraljuk a fuggvenyt
    if n == 1: # megnezzuk az elso elemre
        return 1 
    elif n == 2: # megnezzuk a masodik elemre
        return 1
    else:
        return fibonacci(n-1) + fibonacci(n-2) # kiszamoljuk az n-edik tagod fibonacci keplete szerint
def main():
    print(fibonacci(6)) 
if __name__ == "__main__":
    main()
