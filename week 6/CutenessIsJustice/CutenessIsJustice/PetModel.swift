//
//  PetModel.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 25/3/22.
//

import Foundation

struct PetModel: Identifiable {
    var id: Int
    var name: String
    var age: Int
    var gender: String
    var color: String
    var weight: Double
    var location: String
    var image: String
    var about: String
    var owner: OwnerModel
}
