import Foundation

func solution(_ money: Int) -> Int {
    var money = money
    let coinList = [500, 100, 50, 10]
    var answer = 0

    for coin in coinList {
        if money == 0 {
            break
        } else if money >= coin {
            answer += money / coin
            money %= coin
        }
    }

    return answer
}
