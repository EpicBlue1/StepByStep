//
//  ProjectView.swift
//  StepByStep
//
//  Created by Reinhardt on 2022/10/30.
//

import SwiftUI

struct ProjectView: View {
    var project: [Projects]
    
    var body: some View {
        ScrollView{
            VStack{
                Image("testImage")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 280)
                    .cornerRadius(25)
                    .overlay(
                        VStack{
                            HStack{
                                Image(systemName: "arrowshape.turn.up.left.circle.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50, alignment: .topTrailing)
                                    .foregroundColor(.white)
                                    .padding(.top, 10)
                            }
                            .frame(maxWidth: .infinity, maxHeight: 60, alignment: .bottomLeading)
                            .padding()
                            Spacer()
                            Rectangle()
                                .frame(maxWidth: .infinity, maxHeight: 60, alignment: .bottomLeading)
                                .foregroundColor(Color.white)
                                .overlay(Text("Title").font(.system(size: 26, weight: .bold)).foregroundColor(Color("DarkBlue")))
                                .padding(.bottom, 70)
                        }
                    )
                VStack{
                    Rectangle()
                        .frame(maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                        .cornerRadius(25)
                        .foregroundColor(.white)
                        .shadow(color: Color("Shadow"), radius: 8, x: 1, y: 1)
                        .overlay(
                            HStack{
                                Spacer()
                                Image(systemName: "dollarsign.circle")
                                    .resizable()
                                    .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color("Shadow"))
                                Spacer()
                                Text("$450")
                                    .font(.system(size: 22, weight: .bold))
                                    .foregroundColor(Color("DarkBlue"))
                                Spacer()
                                Image(systemName: "clock")
                                    .resizable()
                                    .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color("Shadow"))
                                Spacer()
                                Text("2 Days")
                                    .font(.system(size: 22, weight: .bold))
                                    .foregroundColor(Color("DarkBlue"))
                                Spacer()
                            })
                    Text("Description").padding(.top, 20).foregroundColor(Color("DarkGray"))
                    Text("Requirements:")
                        .font(.system(size: 26, weight: .bold)).foregroundColor(Color("DarkBlue"))
                        .padding(.top)
                        .padding(.bottom)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack{
                        Text("Requirements")
                            .padding()
                            .foregroundColor(Color("DarkGray"))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .shadow(color: Color("Shadow"), radius: 8, x: 1, y: 1)
                    .cornerRadius(25)
                    Text("Steps:")
                        .font(.system(size: 26, weight: .bold)).foregroundColor(Color("DarkBlue"))
                        .padding(.top)
                        .padding(.bottom)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack{
                        Text("Steps")
                            .padding()
                            .foregroundColor(Color("DarkGray"))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .shadow(color: Color("Shadow"), radius: 8, x: 1, y: 1)
                    .cornerRadius(25)
                }.padding()
            }
        }.ignoresSafeArea(.all)
        .background(Color("WhiteGray"))
    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView(project: Projects.all)
    }
}
