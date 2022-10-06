//
//  ContentView.swift
//  StepByStep
//
//  Created by Reinhardt de Eier on 29/06/1401 AP.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Rectangle()
                    .frame(width: .infinity, height: 100, alignment: .trailing)
                    .cornerRadius(25)
                    .overlay(
                        HStack{
                            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .frame(width: 225, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Image(systemName: "gearshape.fill")
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                )
            }
            HStack{
                Text("Projects")
                Text("18")
                Spacer()
                
            }.padding()
            ScrollView {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
            }.frame(width: .infinity, height: .infinity, alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
