//
//  ContentView.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 4/3/22.
//

import SwiftUI
import AVFoundation

struct WhiteButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Spacer()
            configuration.label.foregroundColor(.black)
            Spacer()
        }
        .padding()
        .frame(width: 150, height: 50, alignment: .center)
        .background (LinearGradient(gradient: Gradient(colors: [.white, .white]), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(200)
        .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

let backgroundGradient = LinearGradient(
    gradient: Gradient(colors: [Color.orange, Color.yellow]),
    startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    @AppStorage("username") var username: String = "Anonymous"
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("pet").ignoresSafeArea()
                VStack() {
                    HStack(){
                        NavigationLink(destination: signUp()) {
                            Text("Sign In")
                                .foregroundColor(.orange)
                                .font((.headline))
                                .bold()
                        }.position(CGPoint(x: 190, y: 370))
                            .buttonStyle(WhiteButton())
                    }
                    HStack(){
                        NavigationLink(destination: signUp()) {
                            Text("Sign Up")
                                .foregroundColor(.orange)
                                .font((.headline))
                                .bold()
                        }.position(CGPoint(x: 190, y:40))
                            .buttonStyle(WhiteButton())
                    }
                }
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}


