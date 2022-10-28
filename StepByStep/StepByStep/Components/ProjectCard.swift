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
        HStack{
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 160)
                .cornerRadius(25)
                .foregroundColor(Color.white)
                .overlay(
                    HStack{
                        Image(project.image)
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: 135)
                            .cornerRadius(25)
                        VStack{
                            Text(project.title)
                                .font(.system(size: 26, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text(project.description)
                                .font(.system(size: 14))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text(project.author)
                                .padding(.top, 20)
                                .font(.system(size: 22, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }.padding(.leading, 20)
                    }.padding()
                )
        } .padding()
        .shadow(color: Color("Shadow"), radius: 8, x: 1, y: 1)
    }
}

struct ProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCard(project: Projects.all[0])
    }
}

