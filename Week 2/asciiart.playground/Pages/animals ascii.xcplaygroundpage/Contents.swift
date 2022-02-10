
import Foundation
let path = Bundle.main.path(forResource: "dolphins.txt", ofType: nil)
let str = try String(contentsOfFile: path!,encoding: .utf8)
print (str)

func load(_ file :String) -> String{
    let path = Bundle.main.path(forResource:file, ofType:nil)
    let str = try? String(contentsOfFile: path!,encoding:.utf8)
    return str!
}

print(load("deers.txt"))

//Source:
//https://asciiart.website/index.php?art=animals/dolphins
