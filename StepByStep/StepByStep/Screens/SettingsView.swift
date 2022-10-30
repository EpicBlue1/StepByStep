//
//  SettingsView.swift
//  StepByStep
//
//  Created by student on 2022/10/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("v1.0.0")
                    .navigationTitle("Settings")
            }
            .navigationBarHidden(true)
            .ignoresSafeArea(.all)
        .background(Color("DarkBlue"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
