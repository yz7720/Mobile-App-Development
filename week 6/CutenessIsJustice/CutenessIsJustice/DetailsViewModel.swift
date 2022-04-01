//
//  DetailsViewModel.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 25/3/22.
//

import Foundation

class DetailsViewModel: ObservableObject {
    
    let model: PetModel
    
    let story = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    init(model: PetModel) { self.model = model }
    
    func favouriteMethod() {  }
    
    func messageMethod() {  }
    
    func adoptMethod() {  }
}
