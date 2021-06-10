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
                HStack{
                    Spacer()
                app(icon: UIImage(imageLiteralResourceName: "Text"), appName: "Text", appExecutable: (SettingsApp()))
                Spacer()
                app(icon: UIImage(imageLiteralResourceName: "Calendar"), appName: "Calendar", appExecutable: (SettingsApp()))
                Spacer()
                app(icon: UIImage(imageLiteralResourceName: "Photos"), appName: "Photos", appExecutable: (SettingsApp()))
                Spacer()
                app(icon: UIImage(imageLiteralResourceName: "Camera"), appName: "Camera", appExecutable: (SettingsApp()))
                Spacer()
                
                }
                
                HStack{
                    Spacer()
                app(icon: UIImage(imageLiteralResourceName: "YouTube"), appName: "YouTube", appExecutable: (SettingsApp()))
                Spacer()
                app(icon: UIImage(imageLiteralResourceName: "Stocks"), appName: "Stocks", appExecutable: (SettingsApp()))
                Spacer()
                app(icon: UIImage(imageLiteralResourceName: "Maps"), appName: "Maps", appExecutable: (SettingsApp()))
                Spacer()
                app(icon: UIImage(imageLiteralResourceName: "Weather"), appName: "Weather", appExecutable: (SettingsApp()))
                Spacer()
                
                }
                
                HStack{
                    Spacer()
                app(icon: UIImage(imageLiteralResourceName: "Clock"), appName: "Clock", appExecutable: (SettingsApp()))
                Spacer()
                app(icon: UIImage(imageLiteralResourceName: "Calculator"), appName: "Calculator", appExecutable: (SettingsApp()))
                Spacer()
                app(icon: UIImage(imageLiteralResourceName: "Notes"), appName: "Notes", appExecutable: (SettingsApp()))
                Spacer()
                app(icon: UIImage(imageLiteralResourceName: "Settings"), appName: "Settings", appExecutable: (SettingsApp()))
                Spacer()
                
                }
            }
        }
        .ignoresSafeArea()
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
