m, n = map(int, input().split())

    result = 0
    for _ in range(m):
        num = list(map(int, input().split()))
        result = max(result, min(num))

    print(result)
