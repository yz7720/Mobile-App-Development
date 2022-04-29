//
//  signIn.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 10/3/22.
//

import SwiftUI
import MapKit
import CoreLocation

struct signIn: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        
        VStack {
            TabView {
                ViewB()
                    .tabItem {
                        Image(systemName: "location")
                        Text("Discover")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                ViewC()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("My Profile")
                    }
            }
            .font(.headline)
        }
    }
}


struct signIn_Previews: PreviewProvider {
    static var previews: some View {
        signIn()
    }
}
