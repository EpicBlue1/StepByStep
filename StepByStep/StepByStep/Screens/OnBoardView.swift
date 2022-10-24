//
//  OnBoardView.swift
//  StepByStep
//
//  Created by student on 2022/10/24.
//

import SwiftUI

struct OnboardView: View {

    var body: some View {
        NavigationView {
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
                            }.padding(.top, 50)
                    )
///
                    Button("Skip") {
                        print("Button pressed!")
                    }
                    .padding()
                    .frame(maxWidth: 200)
                    .background(Color("Orange"))
                    .clipShape(Capsule())
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold))


                }.navigationBarHidden(true)
                .ignoresSafeArea(.all)
                .background(Color("WhiteGray"))
                .padding(.bottom, 20)
        }
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardView()
        }
    }
}
