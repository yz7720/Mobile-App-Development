//
//  ViewB.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 1/4/22.
//

import SwiftUI
import MapKit
import CoreLocation

struct ViewB: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        
        
            Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
                .frame(width: 378.0, height: 600)
        }
        
    }
    
    



struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
