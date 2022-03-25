//
//  Home.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 24/3/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.primary_color.edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Hey Yiting,")
                                    .foregroundColor(Color.primary).padding(.top, 16)
                                Text("Find a new friend near you!")
                                    .foregroundColor(Color.primary).padding(.top, 4)
                            }
                            Spacer()
                        }
//                        Text("Nearby results")
//                            .foregroundColor(Color.text_primary_color)
//                            .padding(.top, 24).padding(.bottom, 8)
//                        ForEach(HomeViewModel.petsList) { model in
//                            NavigationLink(destination: DetailsView(model: model), label: {
//                                HomeListModelView(image: model.image, name: model.name, age: model.age,
//                                                  about: model.about, location: model.location, gender: model.gender).padding(.bottom, 4)
//                            })
//                        }
//                    }
//                    Spacer()
//                    Spacer().frame(height: 150)
//                }
//                .padding(.horizontal, 16).padding(.top, 1)
//                .navigationBarHidden(true)
//            }
//        }
//        .navigationViewStyle(StackNavigationViewStyle())
    }
}
            }
        }
    }
}
            
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
