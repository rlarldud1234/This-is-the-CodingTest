## 그리디 적용 전
n, m, k = map(int, input().split())
number = list(map(int, input().split()))
    
answer = 0
number.sort()
    
for i in range(1, m+1):
    if k % i == 0:
        answer += number[-2]
    else:
        answer += number[-1]
    
print(answer)

## 그리디 적용 후
n, m, k = map(int, input().split())
data = list(map(int, input().split()))

data.sort()
first = data[- 1] # 가장 큰 수
second = data[- 2] # 두 번째로 큰 수

count = int(m / (k+1)) * k
count += m % (k+1)

result = 0
result += (count) * first
result += (m - count) * second

print(result)
