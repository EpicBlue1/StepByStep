//
//  ContentView.swift
//  StepByStep
//
//  Created by Reinhardt de Eier on 29/06/1401 AP.
//

import SwiftUI

struct OnBoarding: View {
    
    @State private var email = ""
    @State private var password = ""

    var body: some View {
            VStack{
                Rectangle()
                    .frame(width: .infinity, height: 200, alignment: .topLeading)
                    .foregroundColor(Color("LightYellow"))
                    .cornerRadius(25)
                    .overlay(
                        VStack{
                            Image("AppIcon")
                                .scaleEffect(3)
                            Text("Welcome to Step By Step!")
                                .font(.system(size: 26, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.top, 40)
                        }.padding(.leading, 20)
                            .padding(.top, 60)
                            .padding(.trailing, 20)
                )
                TabView(){
                    OnBoardModel().tag(0)
                    OnBoardModel().tag(1)
                    OnBoardModel().tag(2)
                }.tabViewStyle(PageTabViewStyle())

                
                Button("Skip") {
                    print("Button pressed!")
                }
                .padding()
                .frame(maxWidth: 200)
                .background(Color("Orange"))
                .clipShape(Capsule())
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .bold))

                Spacer()
            }.navigationBarHidden(true)
            .ignoresSafeArea(.all)
            .background(Color("WhiteGray"))

    }
};

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnBoarding()
        }
    }
}