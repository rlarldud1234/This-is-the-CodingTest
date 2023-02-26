import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0)) ?? 0 }
var (n, k) = (input[0], input[1])
var result = 0

result = n % k
n -= result

while n != 1 {
    n /= k
    result += 1
}

print(result)
