//
//  ViewC.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 1/4/22.
//

import SwiftUI

struct ViewC: View {
    
    let profileLinkNames: [String] = ["Following", "Followers", "Log Out"]
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.primary_color.edgesIgnoringSafeArea(.all)
            VStack(spacing: 0) {
                ForEach(profileLinkNames, id: \.self) { profileLinkName in
                    VStack(spacing: 0) {
                        HStack {
                            Text(profileLinkName)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color.primary)
                                .font(.system(size: 20))
                        }
                        .contentShape(Rectangle()) // Defining the shape of the HStack
                        .padding(EdgeInsets(top: 17, leading: 21, bottom: 17, trailing: 21))
                        Divider()
                    }
                }
            }
            .navigationBarTitle("Profile")
            .navigationBarItems(
                leading:
                    Text("Premium Member")
                    .font(.body)
                    .foregroundColor(Color(.systemGray)),
                trailing: // Add trailing view
                Image("avatar")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())) // Clip the image to a circle
        }
    }
    }

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
}
