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
    let imgage : String
    let title : String
    let description : String
    let category : Category.RawValue
    let steps : String
}

extension Projects {
    static let all: [Projects] = [
        Projects(imgage: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.goodhousekeeping.com%2Flife%2Fpets%2Fg4531%2Fcutest-dog-breeds%2F&psig=AOvVaw3o-RtyHqsxG6tQpdErTLRK&ust=1666702433657000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCMDX28X0-PoCFQAAAAAdAAAAABAD", title: "Random Description", description: "Ios suck", category: "Patio", steps: "Die")
    ]
}
