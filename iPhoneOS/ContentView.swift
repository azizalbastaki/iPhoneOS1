//
//  ContentView.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 09/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
            
            
            VStack{
                HStack {
                    Text("No Service")
                    Spacer()
                    Text("9:41 AM")
                    Spacer()
                    Text("(BATTERY)")
                }
                .foregroundColor(.white)
                appRow(appIcons: ["Text","Calendar","Photos","Camera"], appExecutables: [SettingsApp(), SettingsApp(), SettingsApp(), SettingsApp()])
                
                appRow(appIcons: ["YouTube","Stocks","Maps","Weather"], appExecutables: [SettingsApp(), SettingsApp(), SettingsApp(), SettingsApp()])
                
                appRow(appIcons: ["Clock","Calculator","Notes","Settings"], appExecutables: [SettingsApp(), SettingsApp(), SettingsApp(), SettingsApp()])
                
                
            }
        }
        .ignoresSafeArea()
    }

}

struct appRow: View {
    var appIcons = Array(repeating: "Text", count: 4)
    var appExecutables = Array(repeating: SettingsApp(), count: 4)
    var body: some View {
        HStack{
            Spacer()
            app(icon: UIImage(imageLiteralResourceName: appIcons[0]), appName: appIcons[0], appExecutable: appExecutables[0])
            Spacer()
            app(icon: UIImage(imageLiteralResourceName: appIcons[1]), appName: appIcons[1], appExecutable: appExecutables[1])
            Spacer()
            app(icon: UIImage(imageLiteralResourceName: appIcons[2]), appName: appIcons[2], appExecutable: appExecutables[2])
            Spacer()
            app(icon: UIImage(imageLiteralResourceName: appIcons[3]), appName: appIcons[3], appExecutable: appExecutables[3])
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
