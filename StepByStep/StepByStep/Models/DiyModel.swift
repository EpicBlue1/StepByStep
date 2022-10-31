//
//  DiyModel.swift
//  StepByStep
//
//  Created by student on 2022/10/24.
//

import Foundation

enum Category: String, CaseIterable{
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
    let price : String
    let time : String
    let requirements : [String]
}

extension Projects {
    static let all: [Projects] = [
<<<<<<< HEAD
        Projects(image: "PrivacyFence", title: "DIY Horizontal Slat Privacy Fence", description: "A privacy fence can create a stunning backdrop for your yard. This horizontal slat fence features tall, wood stained fence panels, gorgeous planters, and string lights. It’s the perfect addition to any outdoor space to not only add privacy but also add personality and flair. You can also save so much money by building it yourself, not to mention save on continuous landscaping.", category: "Patio", author: "Reinie", steps: ["Die"], price: "R1200", time: "1 day", requirements: ["(16) 1″x6″x8′ pressure treated common boards", "(1) 2″x6″x8′ pressure treated common board", "(2) 4″x4″x8′ pressure treated common posts", "1/2″x6″ lag screws", "Finish nails", "1 5/8″ deck screws", "Thompson’s Water Seal stain and sealer", "Paint Brushes", "Drill", "Impact Wrench", "Level", "Nail Gun (optional, we held the panels in place with finish nails and then secured with screws)", "Post-hole digger/shovel (optional, see below)"]),
        
        Projects(image: "testImage", title: "Another Title", description: "Great stuff", category: "Patio", author: "Reinie", steps: ["Die"], price: "R100", time: "2 days", requirements: [""])
=======
        Projects(image: "PrivacyFence", title: "DIY Horizontal Slat Privacy Fence", description: "A privacy fence can create a stunning backdrop for your yard. This horizontal slat fence features tall, wood stained fence panels, gorgeous planters, and string lights. It’s the perfect addition to any outdoor space to not only add privacy but also add personality and flair. You can also save so much money by building it yourself, not to mention save on continuous landscaping.", category: "Patio", author: "Reinie", steps: "Die", price: "R1200", time: "1 day", requirements: ["(16) 1″x6″x8′ pressure treated common boards", "(1) 2″x6″x8′ pressure treated common board", "(2) 4″x4″x8′ pressure treated common posts", "1/2″x6″ lag screws", "Finish nails", "1 5/8″ deck screws", "Thompson’s Water Seal stain and sealer", "Paint Brushes", "Drill", "Impact Wrench", "Level", "Nail Gun (optional, we held the panels in place with finish nails and then secured with screws)", "Post-hole digger/shovel (optional, see below)"]),
        Projects(image: "testImage", title: "Another Title", description: "Great stuff", category: "Patio", author: "Reinie", steps: "Die", price: "R100", time: "2 days", requirements: [""])
>>>>>>> parent of f87b362 (All data done)
    ]
}
