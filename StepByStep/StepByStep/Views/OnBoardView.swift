//
//  OnBoardModel.swift
//  StepByStep
//
//  Created by Reinhardt de Beer on 2022/10/16.
//

import SwiftUI

struct OnBoardView: View {
    
    var title : String
    var image : String
    var description : String
    
    var body: some View {
        VStack{
            Text("lol")
                .font(.system(size: 22, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 20)
            Text(description)
                .font(.system(size: 14))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 30)
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 300)
                .cornerRadius(25)
                .foregroundColor(Color.white)
                .shadow(color: Color("Shadow"), radius: 8, x: 1, y: 1)
        }.padding(10)
    }
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView(title: "Title", image: "Image", description: "Description")
    }
}
