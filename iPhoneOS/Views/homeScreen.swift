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
                iPhoneOS.statusBar()
                
                appRow(appIcons: ["Text","Calendar","Photos","Camera"], appExecutables: [SettingsApp(), SettingsApp(), SettingsApp(), SettingsApp()])
                
                appRow(appIcons: ["YouTube","Stocks","Maps","Weather"], appExecutables: [SettingsApp(), SettingsApp(), SettingsApp(), SettingsApp()])
                
                appRow(appIcons: ["Clock","Calculator","Notes","Settings"], appExecutables: [SettingsApp(), SettingsApp(), SettingsApp(), SettingsApp()])
                VStack{
                HStack {
                    ZStack{
                        Color.gray
                        gradientShape(rows: 50, cols: 160)
                            .fill(Color.white)
                            .frame(height: 75)
                            .offset(y:-12)
                        Rectangle()
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color.clear, dockColor]), startPoint: .bottom, endPoint: .top))
                        
                        appRow(appIcons: ["Phone","Mail","Safari","iPod"], appExecutables: [SettingsApp(), SettingsApp(), SettingsApp(), SettingsApp()])
                        
                    }.frame(height: 100)
                }
                
                homeButton()
                    .offset(y:5)
                }
                .offset(y:250)
                
                
            }
            .offset(x: 0, y: -120)
        }
        .background(Color.black
                        .ignoresSafeArea())
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
