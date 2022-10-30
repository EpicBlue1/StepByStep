//
//  HomeView.swift
//  StepByStep
//
//  Created by student on 2022/10/24.
//

import SwiftUI

struct HomeView: View {
    
    var projects: [Projects]
    
    @State private var email = ""
    
    var body: some View {
        NavigationView {
            VStack{
                    Rectangle()
                        .frame(width: .infinity, height: 150, alignment: .topLeading)
                        .foregroundColor(Color("LightYellow"))
                        .cornerRadius(25)
                        .overlay(
                            HStack{
                                TextField("Search", text: self.$email)
                                    .frame(height: 55)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .padding([.horizontal], 4)
                                    .cornerRadius(16)
                                    .padding([.horizontal],24)
                                    .background(RoundedRectangle(cornerRadius: 50).fill(Color.white))
                                    .foregroundColor(Color("WhiteBack"))
                                Image(systemName: "gearshape")
                                    .scaleEffect(2)
                                    .foregroundColor(Color("WhiteBack"))
                                    .padding(.leading, 20)
                                    .padding(.trailing, 10)
                        }
                        .padding(.top, 20)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    )
                    HStack{
                        Text("\(projects.count)")
                        Text("\(projects.count > 1 ? "Projects" : "Project")").padding(.trailing)
                        ScrollView (.horizontal){
                            HStack {
                                ForEach(Category.allCases, id: \.self) { category in
                                    HStack{
                                        Text(category.rawValue)
                                            .foregroundColor(.white)
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                    .padding()
                                    .background(Color("Green"))
                                    .cornerRadius(25)
                                }
                            }
                        }
                    }.padding()
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    
                    
                VStack{
                    ScrollView {
                        ForEach(projects) { Projects in
                            NavigationLink(destination: ProjectView(project: Projects)) {
                            ProjectCard(project: Projects)
                        }
                    }
                }
            }
                    Spacer()
                }.navigationBarHidden(true)
                .ignoresSafeArea(.all)
            .background(Color("WhiteGray"))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
    }
};

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView(projects: Projects.all)
                .preferredColorScheme(.light)
                
        }
    }
}
