n = int(input())
h, m, s = 0, 0, 0
answer = 0

for _ in range(1, (n+1) * 3600):
    if s == 60:
        s = 0
        m += 1
    if m == 60:
        s = 0
        m = 0
        h += 1
    if (str(h) + str(m) + str(s)).__contains__("3"):
        answer += 1
    s += 1
print(answer)
