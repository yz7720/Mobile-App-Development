//
//  ParadiseDetail.swift
//  Week 3 Homework App
//
//  Created by yiting zeng on 16/2/22.
//

import SwiftUI

struct ParadiseDetail: View {
    let room: Paradise
    @State private var zoomed = false
    
    var body: some View {
        ZStack(alignment:.topLeading) {
        Image(room.imageName)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .navigationBarTitle(Text(room.name),displayMode: .inline)
            .onTapGesture{
                withAnimation {self.zoomed.toggle()}
            }
            .frame(minWidth:0,maxWidth:.infinity, minHeight:0, maxHeight:.infinity)
           
            if room.isSunny && !zoomed{
            Image(systemName:"sun.max.fill")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(.yellow)
                .transition(.move(edge:.leading))
            }
        }
    }
}

struct ParadiseDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {ParadiseDetail(room:testData[0])}
            NavigationView {ParadiseDetail(room:testData[1])}
        }
    }
}
