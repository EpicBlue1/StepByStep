//
//  SettingsView.swift
//  StepByStep
//
//  Created by student on 2022/10/24.
//

import SwiftUI

enum SchemeType: Int, Identifiable, CaseIterable {
    var id: Self {self}
    case system
    case light
    case dark
}

extension SchemeType {
    var title: String {
        switch self {
        case .system:
            return "System"
        case .light:
            return "Light"
        case .dark:
            return "Dark"
        }
    }
}

struct SettingsView: View {
    
    @AppStorage("systemThemeVal") private var systemTheme: Int = SchemeType.allCases.first!.rawValue
    var body: some View {
        NavigationView {
            VStack{
                Text("v1.0.0")
                Picker(selection: $systemTheme, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/, content: {
                    /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/;
                    /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
                })
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
