///Users/yitingzeng/Desktop/SwiftyChat-master/SwiftyChatExample/SwiftyChatExample.xcodeproj
//  ViewD.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 1/4/22.
//

import SwiftUI


struct ViewD: View {
    @State var searchText: String = ""
    
    let users = ["Parkinson", "Daisy", "Oscar", "Milo", "Ruby"]
    let messages = [
        ["user":"Parkinson", "message":"Hi there, How's your work ? did you completed that cross platform app ? ", "time": "10:30 AM"],
        ["user":"Daisy", "message": "Are you available tomorrow at 3:30 pm ? i'd like to discuss about our new project", "time": "12:45 AM"],
        ["user":"Oscar", "message": "Hey, is there any update for morning stand up meeting tomorrow ?", "time": "12:15 PM"],
        ["user":"Milo", "message": "Wow, awesome! Thank you so much for your effort", "time": "4:30 AM"],
        ["user":"Ruby", "message": "Yeah, Let's meet tomrrow evening 5:30pm at coffe shop", "time": "8:17 AM"]]
    
    
    var body: some View {
        ZStack{
            Color.primary_color.edgesIgnoringSafeArea(.all)
            VStack{
                
                HStack{
                    Text("Chats")
                        .fontWeight(.semibold)
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "square.and.pencil")
                        .foregroundColor(Color.primary_color)
                        .font(.title2)
                }
                
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading, spacing: 5){
                        
                        SearchView(searchText: $searchText)
                        
                        OnlineUsersView(users: users)
                        
                        Divider()
                            .padding(.bottom, 20)
                        
                        VStack(spacing: 25){
                            ForEach(messages, id: \.self) { message in
                                
                                ChatItem(
                                    userImage: String(describing: message["user"]!),
                                    userName: String(describing: message["user"]!),
                                    message: String(describing: message["message"]!),
                                    time: String(describing: message["time"]!)
                                )
                                
                            }
                        }
                        
                    }
                }
            }
            .padding(.top)
            .padding(.horizontal)
        }
    }
}

struct ViewD_Previews: PreviewProvider {
    static var previews: some View {
        ViewD().preferredColorScheme(.light)
    }
}
