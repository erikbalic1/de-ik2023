def fibonacci(n):
    if n == 1:
        return 1
    elif n == 2:
        return 1
    else:
        return fibonacci(n-1) + fibonacci(n-2)
def main():
    print(fibonacci(6))
if __name__ == "__main__":
    main()
