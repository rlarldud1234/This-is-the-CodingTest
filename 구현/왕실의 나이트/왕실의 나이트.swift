import Foundation

let english = ["a", "b", "c", "d", "e", "f", "g", "h"]
let input = Array(readLine()!).map { String($0) }
let row = Int(input[1]) ?? 0
let column = (english.firstIndex(of: input[0]) ?? 0) + 1

let steps = [[-2, -1], [-1, -2], [1, -2], [2, -1], [2, 1], [1, 2], [-1, 2], [-2, 1]]

var result = 0

for step in steps {
    let nextRow = row + step[0]
    let nextColumn = column + step[1]
    if nextRow >= 1 && nextRow <= 8 && nextColumn >= 1 && nextColumn <= 8 {
        result += 1
    }
}

print(result)
