//: [Previous](@previous)

import Foundation

let path = Bundle.main.path(forResource: "dolphins.txt", ofType: nil)
let dolphinsStr = try String(contentsOfFile: path!,encoding: .utf8)
print ("dolphinsStr,count", dolphinsStr.count)

let dolphinsSplit = dolphinsStr.split(separator: "\n",omittingEmptySubsequences:false)
print("dolphinsSplit.count \(dolphinsSplit.count)")

for index in 0...31{
    let it = dolphinsSplit[index]
    print(it,it.count,index)
}
