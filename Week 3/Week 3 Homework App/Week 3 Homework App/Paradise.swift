//
//  Paradise.swift
//  Week 3 Homework App
//
//  Created by yiting zeng on 16/2/22.
//

import SwiftUI

struct Paradise : Identifiable{
    var id = UUID()
    var name:String
    var popularity:String
    var isSunny: Bool = false
    
    var imageName: String {return name}
    var thumbnailName: String {return name}
}

#if DEBUG
let testData = [
    Paradise(name:"Bahamas", popularity: "⭐️⭐️⭐️⭐️", isSunny: true),
    Paradise(name:"Bermuda", popularity: "⭐️⭐️⭐️", isSunny: false),
    Paradise(name:"Cancun", popularity: "⭐️⭐️⭐️⭐️⭐️", isSunny: true),
    Paradise(name:"Hawaii", popularity: "⭐️⭐️⭐️⭐️⭐️", isSunny: true),
    Paradise(name:"Malibu", popularity: "⭐️⭐️⭐️⭐️", isSunny: false),
    Paradise(name:"Miami", popularity: "⭐️⭐️⭐️⭐️⭐️", isSunny: false),
    Paradise(name:"Panama", popularity: "⭐️⭐️", isSunny: true),
    Paradise(name:"Puerto Rico", popularity: "⭐️⭐️⭐️⭐️", isSunny: false),
    Paradise(name:"Santa Monica", popularity: "⭐️⭐️⭐️⭐️", isSunny: false),
]
#endif
