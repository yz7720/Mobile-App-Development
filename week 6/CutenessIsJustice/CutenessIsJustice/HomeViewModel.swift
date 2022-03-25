//
//  SwiftUIView.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 25/3/22.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var petsList = [PetModel]()
    
    init() { fetchpetsList() }
    
    func fetchpetsList() { petsList = petData.pets }
}

