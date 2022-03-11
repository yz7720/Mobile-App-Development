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
        NavigationView{
        VStack{
        Text("Pet's Information")
                .font((.headline))
                .bold()
        HStack(){
            TextField("Name", text: $petName)
                .padding()
                .frame(width: 180, height: 50)
                .background(lightGreyColor)
                .cornerRadius(100.0)
                .padding(.top,50)
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
                        .foregroundColor(.orange)
                        .font((.headline))
                        .bold()
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
