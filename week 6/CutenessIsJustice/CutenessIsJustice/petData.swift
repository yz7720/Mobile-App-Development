//
//  petData.swift
//  CutenessIsJustice
//
//  Created by yiting zeng on 25/3/22.
//

import Foundation

struct petData {
    static let owner = OwnerModel(name: "Yiting Zeng", bio: "UX/UI Designer", image: OWNER_IMAGE)
    static let pets = [
        PetModel(id: 124, name: "Parkinson", age: 2, gender: "male", color: "Brown", weight: 14, location: "341m", image: CAT1, about: "Playful", owner: owner),
        PetModel(id: 785, name: "Daisy", age: 3, gender: "female", color: "Brown", weight: 14, location: "541m", image: CAT2, about: "Playful", owner: owner),
        PetModel(id: 485, name: "Oscar", age: 4, gender: "male", color: "Brown", weight: 14, location: "410m", image: DOG1, about: "Playful", owner: owner),
        PetModel(id: 452, name: "Milo", age: 4, gender: "male", color: "Brown", weight: 14, location: "243m", image: DOG2, about: "Playful", owner: owner),
        PetModel(id: 369, name: "Ruby", age: 5, gender: "female", color: "Brown", weight: 14, location: "114m", image: CAT3, about: "Playful", owner: owner)
    ]
}
