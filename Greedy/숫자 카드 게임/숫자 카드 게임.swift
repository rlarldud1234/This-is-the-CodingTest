import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0)) ?? 0 }
let (m, n) = (input[0], input[1])
var result = 0

for _ in 0..<m {
    let card = readLine()!.components(separatedBy: " ").map { Int(String($0)) ?? 0 }
    result = result < card.min()! ? card.min()! : result
}

print(result)
