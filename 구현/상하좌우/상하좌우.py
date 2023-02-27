n = int(input())
l = list(input().split())
x, y = 1, 1

for i in l:
    if i == "R":
        y = y + 1 if y + 1 < n else n
    elif i == "L":
        y = y - 1 if y - 1 != 0 else 1
    elif i == "U":
        x = x - 1 if x - 1 != 0 else 1
    elif i == "D":
        x = x + 1 if x + 1 < n else n

print(x, y)
