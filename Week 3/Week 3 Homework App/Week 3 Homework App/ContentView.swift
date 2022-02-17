//
//  ContentView.swift
//  Week 3 Homework App
//
//  Created by yiting zeng on 16/2/22.
//

import SwiftUI

struct ContentView: View {
    var Paradises: [Paradise] = []
    
    var body: some View {
        NavigationView{
        List(Paradises) { Paradise in
            ParadiseCell(room: Paradise)
        }
        .navigationTitle(Text("Beachside Paradise"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(Paradises: testData)
    }
}
#endif

struct ParadiseCell: View {
    let room: Paradise
    
    var body: some View {
        return NavigationLink(destination: ParadiseDetail(room: room)){
            Image(room.thumbnailName)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(8.0)
            
            VStack(alignment: .leading, spacing: 0.0) {
                Text(room.name)
                Text(room.popularity)
                    .font(.subheadline)
            }
        }
    }
}
