//: [Previous](@previous)

import Foundation

let path = Bundle.main.path(forResource: "dolphins.txt", ofType: nil)
let dolphinsStr = try String(contentsOfFile: path!,encoding: .utf8)
print ("dolphinsStr,count", dolphinsStr.count)

let dolphinsSplit = dolphinsStr.split(separator: "\n",omittingEmptySubsequences:false)
print("dolphinsSplit.count \(dolphinsSplit.count)")

for index in 0...31{
    let it = dolphinsSplit[index]
    print("\(it) \(it.count) \(index)")
}

for (index,value) in dolphinsSplit.enumerated() {
    if value.count == 0 && index < 31 {
        print("index \(index)")
    }
}

let n = 33
for index in 0..<n {
    let value = dolphinsSplit[index]
    if value.count == 0 {
        print("index \(index)")
    }
}

