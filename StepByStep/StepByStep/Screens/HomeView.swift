//
//  HomeView.swift
//  StepByStep
//
//  Created by student on 2022/10/24.
//

import SwiftUI

enum SearchScope: String, CaseIterable {
    case title, description
}

enum FilterScope: String {
    case title
}

struct HomeView: View {
    
    var projects: [Projects]
    var ProjectsList : [Projects]
    
    @State private var searchText = ""
    @State private var searchScope = SearchScope.title
    @State var filtering: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                    Rectangle()
                        .frame(width: .infinity, height: 150, alignment: .topLeading)
                        .foregroundColor(Color("LightYellow"))
                        .cornerRadius(25)
                        .overlay(
                            HStack{
                                TextField("Search", text: self.$searchText)
                                    .frame(height: 55)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .padding([.horizontal], 4)
                                    .cornerRadius(16)
                                    .padding([.horizontal],24)
                                    .background(RoundedRectangle(cornerRadius: 50).fill(Color.white))
                                    .foregroundColor(Color("WhiteBack"))
                                NavigationLink(destination: SettingsView()) {
                                    Image(systemName: "gearshape")
                                        .scaleEffect(2)
                                        .foregroundColor(Color("WhiteBack"))
                                        .padding(.leading, 20)
                                        .padding(.trailing, 10)
                                }
                        }
                        .padding(.top, 20)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    )
                    HStack{
                        Text("\(filteredProjects.filter {filtering == "" ? $0.category == $0.category : $0.category == filtering}.count)")
                        Text("\(filteredProjects.filter {filtering == "" ? $0.category == $0.category : $0.category == filtering}.count > 1 ? "Projects" : "Project")").padding(.trailing)
                        ScrollView (.horizontal){
                            HStack {
                                ForEach(Category.allCases, id: \.self) { category in
                                    Button(category.rawValue) {
                                        filtering = category.rawValue
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                    .padding()
                                    .background(Color("Green"))
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                }
                            }
                        }
                    }.padding()
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                Text(filtering)
                    
                VStack{
                    ScrollView {
                        ForEach(filteredProjects.filter {filtering == "" ? $0.category == $0.category : $0.category == filtering}) { Projects in
                            NavigationLink(destination: ProjectView(project: Projects, Requirements: [Projects])) {
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
    
    var filteredProjects: [Projects] {
        if searchText.isEmpty {
            return projects
        } else {
            return projects.filter {$0.title.localizedCaseInsensitiveContains(searchText)}
        }
    }
};

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView(projects: Projects.all, ProjectsList: Projects.all)
                .preferredColorScheme(.light)
                
        }
    }
}
