//
//  DiyModel.swift
//  StepByStep
//
//  Created by student on 2022/10/24.
//

import Foundation

enum Category: String {
    case Patio = "Patio"
    case WoodBuilds = "Wood Builds"
    case Plants = "For Your Plants"
    case FirePlace = "Fireplace Hacks"
}

struct Projects: Identifiable {
    let id = UUID()
    let image : String
    let title : String
    let description : String
    let category : Category.RawValue
    let author : String
    let steps : String
}

extension Projects {
    static let all: [Projects] = [
        Projects(image: "testImage", title: "Random Title", description: "Ios suck", category: "Patio", author: "Reinie", steps: "Die"),
        Projects(image: "testImage", title: "Another Title", description: "Ek sukkel", category: "Patio", author: "Reinels", steps: "Die"),
        
    ]
}
