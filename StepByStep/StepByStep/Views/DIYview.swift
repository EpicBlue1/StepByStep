//
//  DIYview.swift
//  StepByStep
//
//  Created by Reinhardt de Beer on 2022/10/16.
//

import SwiftUI

struct DIYview: View {
    var body: some View {
        HStack{
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 160)
                .cornerRadius(25)
                .foregroundColor(Color.white)
                .overlay(
                    HStack{
                        Rectangle()
                            .frame(width: 120, height: 120)
                            .cornerRadius(25)
                        VStack{
                            Text("Name")
//                                .padding(.leading, 20)
//                                .padding(.bottom, 10)
                                .font(.system(size: 26, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Name")
//                                .padding(.leading, 20)
                                .font(.system(size: 14))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Name")
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

struct DIYview_Previews: PreviewProvider {
    static var previews: some View {
        DIYview()
    }
}
