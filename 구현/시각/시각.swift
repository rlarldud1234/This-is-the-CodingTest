import Foundation

let n = Int(readLine()!) ?? 0
var (h, m, s) = (0, 0, 0)
var answer = 0

for _ in 1..<(n+1) * 3600 {
    if s == 60 {
        s = 0
        m += 1
    }
    if m == 60 {
        s = 0
        m = 0
        h += 1
    }
    if ("\(h) \(m) \(s)").contains("3") {
        answer += 1
    }
    s += 1
}

print(answer)
