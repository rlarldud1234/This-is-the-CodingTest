import Foundation

// 그리디 적용 전
let input = readLine()!.components(separatedBy: " ").map { Int(String($0)) ?? 0}
let (n, m, k) = (input[0], input[1], input[2])
var number = readLine()!.components(separatedBy: " ").map { Int(String($0)) ?? 0}

number.sort(by: >)
var result = 0

for i in 1..<m+1 {
    if k % i == 0 {
        result += number[1]
    } else {
        result += number[0]
    }
}

print(result)

// 그리디 적용 후
let input = readLine()!.components(separatedBy: " ").map { Int(String($0)) ?? 0}
let (n, m, k) = (input[0], input[1], input[2])
var number = readLine()!.components(separatedBy: " ").map { Int(String($0)) ?? 0}

number.sort(by: >)
let first = number[0] // 가장 큰 수
let second = number[1] // 두 번째로 큰 수

// 가장 큰 수가 더해지는 횟수 계산
var count = Int(m / (k+1)) * k
count += m % (k+1)

var result = 0
result += count * first
result += (m-count) * second

print(result)
