//
//  SettingsView.swift
//  StepByStep
//
//  Created by student on 2022/10/24.
//

import SwiftUI

enum Schemetype: Int, Identifiable, CaseIterable {
    var id: Self { self }
    case system
    case light
    case dark
}

extension Schemetype {
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
    
    @AppStorage("systemThemeVal") private var systemTheme: Int = Schemetype.allCases.first!.rawValue
    
    private var selectedScheme: ColorScheme? {
        guard let theme = Schemetype(rawValue: systemTheme) else { return nil }
        switch theme {
        case .light:
            return .light
        case .dark:
            return .dark
        default:
            return nil
        }
    }
    
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                
                Text("Settings")
                    .font(.system(size: 26, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
                
                Picker("Mode", selection: $systemTheme) {
                    ForEach(Schemetype.allCases) { item in
                        Text(item.title)
                            .tag(item.rawValue)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Spacer()
                
                Text("v1.0.0")
            }
            .padding()
            .navigationBarHidden(true)
            .ignoresSafeArea(.all)
            .background(Color("WhiteGray"))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .preferredColorScheme(selectedScheme)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
