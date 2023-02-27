import Foundation

let n = Int(readLine()!) ?? 0
let list = readLine()!.components(separatedBy: " ")
var (x, y) = (1, 1)

for l in list {
    switch l {
    case "R":
        y = y + 1 > n ? n : y + 1
    case "L":
        y = y - 1 == 0 ? 1 : y - 1
    case "U":
        x = x - 1 == 0 ? 1 : x - 1
    case "D":
        x = x + 1 > n ? n : x + 1
    default:
        continue
    }
}

print(x, y)
