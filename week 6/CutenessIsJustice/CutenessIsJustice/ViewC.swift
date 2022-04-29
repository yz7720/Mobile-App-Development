//
//  ViewC.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 1/4/22.
//

import SwiftUI

struct ViewC: View {
    
    let profileLinkNames: [String] = ["Saved Articles", "Folowers", "Following"]
    
    var body: some View {
        NavigationView {
            VStack {
                ForEach(profileLinkNames, id: \.self) { profileLinkName in
                    Text(profileLinkName)
                        .font(.body)
                }
            }
            .navigationBarTitle("Devin Jameson")
        }
    }

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
}
