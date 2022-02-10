//import UIKit

var greeting = "Hello, playground"

//let ustr = "🌸👸🏻💖⭐️🌈‼️"
//print("ustr", ustr)
//print(ustr.count)
//print(ustr[ustr.startIndex])
//print(ustr[ustr.index(ustr.startIndex, offsetBy: 3)])

//import Foundation

let str="💖🌸🌈"
func charAt(_ str:String, _ offset:Int) -> String {
  let index = str.index(str.startIndex, offsetBy: offset)
  let char = str[index]
  return String(char)
}

let randomInt = Int.random(in: 0..<str.count)

func generateLine(_ n:Int) {
  var nstr = ""
  for _ in 0..<n {
    let randomInt = Int.random(in: 0..<str.count)
    // print(index, "randomInt", randomInt)
    nstr += charAt(str, randomInt)
  }
  print(nstr)
}

func generateBlock(_ n: Int) {
  for _ in 0..<n {
    generateLine(n)
  }
}

generateBlock(5)
print("")
generateBlock(5)
print("")
generateBlock(5)
