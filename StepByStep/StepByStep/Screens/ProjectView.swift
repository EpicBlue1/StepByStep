//
//  ProjectView.swift
//  StepByStep
//
//  Created by Reinhardt on 2022/10/30.
//

import SwiftUI

struct ProjectView: View {
    var project: Projects
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView(project: Projects.all[0])
    }
}
