//
//  OnBoardModel.swift
//  StepByStep
//
//  Created by Reinhardt on 2022/10/30.
//

import Foundation

struct OnBoardData: Identifiable {
    let id = UUID()
    let tite : String
    let description : String
    let image : String
}

extension OnBoardData {
    static let all: [OnBoardData] = [
        OnBoardData(tite: "Title One", description: "Description One", image: "testImage"),
        OnBoardData(tite: "Title Two", description: "Description Two", image: "testImage")
    ]
}
