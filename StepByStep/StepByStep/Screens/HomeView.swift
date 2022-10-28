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
                                    .foregroundColor(.black)
                                    .shadow(color: Color("Shadow"), radius: 8, x: 1, y: 1)
                                Image(systemName: "gearshape")
                                    .scaleEffect(2)
                                    .padding(.leading, 20)
                                    .padding(.trailing, 10)
                        }
                        .padding(.top, 20)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    )
                    HStack{
                        Text("Projects")
//                        Text("\(projects.count)")
                    }.padding(.top, 20)
                List(Projects.all) { project in
                    Text(project.title)
                }
                    Spacer()
                }.navigationBarHidden(true)
                .ignoresSafeArea(.all)
            .background(Color("WhiteGray"))
        }
    }
};

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView(projects: Projects.all)
        }
    }
}
