def solution(money):
    answer = 0
    coin_list = [500, 100, 50, 10]
    
    for coin in coin_list:
        if money == 0:
            break
        elif money >= coin:
            answer += money // coin
            money %= coin
    return answer
