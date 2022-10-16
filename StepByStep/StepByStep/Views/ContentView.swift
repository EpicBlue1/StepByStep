//
//  ContentView.swift
//  StepByStep
//
//  Created by Reinhardt de Eier on 29/06/1401 AP.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""

    var body: some View {
            VStack{
                Rectangle()
                    .frame(width: .infinity, height: 150, alignment: .topLeading)
                    .foregroundColor(Color("LightYellow"))
                    .cornerRadius(25)
                    .overlay(
                        HStack()
                        {
                            TextField("Search", text: self.$email)
                                .frame(height: 55)
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 4)
                                .cornerRadius(16)

                                .padding([.horizontal], 24)
                                .background(RoundedRectangle(cornerRadius: 50).fill(Color.white))
                                .foregroundColor(.black)
                            Image(systemName: "gearshape")
                                .scaleEffect(2.5)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                    }
                            .padding(.top, 20)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                )
                HStack{
                    Text("Projects")
                    Text("18")
                }.padding(.top, 20)
                ScrollView{
                    DIYview()
                }
                Spacer()
            }.navigationBarHidden(true)
            .ignoresSafeArea(.all)
            .background(Color("WhiteGray"))

    }
};

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
