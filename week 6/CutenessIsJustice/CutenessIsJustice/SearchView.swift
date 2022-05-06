//
//  SearchView.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 6/5/22.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        VStack{
            
            HStack {
                Image(systemName: "magnifyingglass")
                
                TextField("Search", text: $searchText)
                    .foregroundColor(.primary)
                
                Button(action: {
                    self.searchText = ""
                }) {
                    Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                }
            }
            .padding(15)
            .foregroundColor(.secondary)
            .background(Color("color_bg_inverted").opacity(0.05))
            .clipShape(Capsule())
            
        }
        .padding(.vertical)
    }
}
