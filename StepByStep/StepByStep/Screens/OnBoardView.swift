//
//  OnBoardView.swift
//  StepByStep
//
//  Created by student on 2022/10/24.
//

import SwiftUI

struct OnboardView: View {
    
    var OnData: [OnBoardData]

    var body: some View {
        NavigationView {
            VStack{
                    Rectangle()
                        .frame(width: .infinity, height: 250, alignment: .topLeading)
                        .foregroundColor(Color("LightYellow"))
                        .cornerRadius(25)
                        .overlay(
                            VStack{
                                Image("Logo")
                                    .resizable()
                                    .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("Welcome to Step By Step!")
                                    .font(.system(size: 26, weight: .bold))
                                    .frame(maxWidth: .infinity, alignment: .center)
                            }
                    )
                    TabView(){
                        ForEach(OnData) { OnData in
                            OnBoardCard(Data: OnData)
                        }
                    }.tabViewStyle(PageTabViewStyle())
                    Spacer()
                    Button("Skip") {
                        print("Button pressed!")
                    }
                    .padding()
                    .frame(maxWidth: 200)
                    .background(Color("Orange"))
                    .clipShape(Capsule())
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold))

            }.padding(.bottom, 40)
            .navigationBarHidden(true)
                .ignoresSafeArea(.all)
                .background(Color("WhiteGray"))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .navigationBarHidden(true)
            
        }
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardView(OnData: OnBoardData.all)
                .preferredColorScheme(.light)
        }
    }
}
