//
//  OnBoardModel.swift
//  StepByStep
//
//  Created by Leander Van Aarde on 2022/10/16.
//

import SwiftUI

struct OnBoardModel: View {
    var body: some View {
        VStack{
            Text("Card Title")
                .font(.system(size: 22, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 30)
            Text("Lorem ipsum dolor sit amet. Qui vero ipsum est similique exercitationem ea obcaecati porro sit ipsa pariatur. Hic fugit iusto sit maiores atque.")
                .font(.system(size: 14))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 30)
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 300)
                .cornerRadius(25)
                .foregroundColor(Color.white)
                .shadow(color: Color("Shadow"), radius: 8, x: 1, y: 1)
        }.padding(20)
    }
}

struct OnBoardModel_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardModel()
    }
}
