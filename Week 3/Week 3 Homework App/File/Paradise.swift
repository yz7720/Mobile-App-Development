//
//  Paradise.swift
//  Week 3 Homework App
//
//  Created by yiting zeng on 16/2/22.
//

import SwiftUI

struct Paradise{
    var id = UUID()
    var name:String
    var popularity:String
    var hasVideo: Bool = false
    
    var imageName: String {return name}
    var thumbnailName: String {return name + "Thuml"}
}

#if DEBUG
let testData = [
    Paradise(name:"Bahamas", popularity: "⭐️⭐️⭐️⭐️", hasVideo: true),
    Paradise(name:"Bermuda", popularity: "⭐️⭐️⭐️", hasVideo: false),
    Paradise(name:"Cancun", popularity: "⭐️⭐️⭐️⭐️⭐️", hasVideo: true),
    Paradise(name:"Hawaii", popularity: "⭐️⭐️⭐️⭐️⭐️", hasVideo: true),
    Paradise(name:"Malibu", popularity: "⭐️⭐️⭐️⭐️", hasVideo: false),
    Paradise(name:"Miami", popularity: "⭐️⭐️⭐️⭐️⭐️", hasVideo: false),
    Paradise(name:"Panama", popularity: "⭐️⭐️", hasVideo: true),
    Paradise(name:"Puerto Rico", popularity: "⭐️⭐️⭐️⭐️", hasVideo: false),
    Paradise(name:"Santa Monica", popularity: "⭐️⭐️⭐️⭐️", hasVideo: false),
]
#endif
