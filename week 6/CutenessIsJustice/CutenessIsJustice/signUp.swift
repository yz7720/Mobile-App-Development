//
//  signUp.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 4/3/22.
//

import SwiftUI

struct signUp: View {
    @State var petName: String = ""
    @State var petGender: String = ""
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.orange, .yellow]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            // Put other content here; it will appear on top of the background gradient
        VStack{
        Text("Pet's Information")
                .font((.headline))
                .bold()
                .padding(.bottom,10)
                .foregroundColor(.white)
        HStack(){
            TextField("Name", text: $petName)
                .padding()
                .frame(width: 180, height: 50)
                .background(lightGreyColor)
                .cornerRadius(100.0)
                .padding(.top,10)
        }
        HStack(){
            SecureField("Gender", text: $petGender)
                .padding()
                .frame(width: 180, height: 50)
                .background(lightGreyColor)
                .cornerRadius(100.0)
                .padding(.top,10)
                .padding(.bottom,0)
        }
        HStack(){
                SecureField("Breed", text: $petGender)
                    .padding()
                    .frame(width: 180, height: 50)
                    .background(lightGreyColor)
                    .cornerRadius(100.0)
                    .padding(.top,10)
                    .padding(.bottom,0)
            }
        HStack(){
                NavigationLink(destination: signIn()) {
                    Text("Start Exploring")
                        .foregroundColor(.white)
                        .font((.headline))
                        .bold()
                        .padding(.top,10)
                }
    }
}
}
    }
}


struct signUp_Previews: PreviewProvider {
    static var previews: some View {
        signUp()
    }
}
