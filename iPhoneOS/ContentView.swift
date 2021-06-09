//
//  ContentView.swift
//  iPhoneOS
//
//  Created by Aziz AlBastaki on 09/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, SA!")
            .padding()
        app(icon: UIImage(imageLiteralResourceName: "Settings"), appName: "Settings")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
