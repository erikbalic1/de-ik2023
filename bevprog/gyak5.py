# Seregszemle 1
n = int(input())
sum = 0
for i in range(n):
    x = int(input())
    if x % 2 == 0 and x > 0:
        sum = sum + 1
print(sum)
