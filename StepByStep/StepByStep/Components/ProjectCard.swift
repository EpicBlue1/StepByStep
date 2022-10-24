//
//  ProjectCard.swift
//  StepByStep
//
//  Created by Reinhardt on 2022/10/24.
//

import SwiftUI

struct ProjectCard: View {
    
    var project : Projects
    
    var body: some View {
        VStack{
            Text(project.title)
            Image(project.image)
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .padding()
    }
}

struct ProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCard(project: Projects.all[0])
    }
}

