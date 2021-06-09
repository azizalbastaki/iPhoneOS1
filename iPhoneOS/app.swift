//
//  app.swift
//  iPhoneOS
//
//  Created by Aziz AlBastaki on 09/06/2021.
//

import SwiftUI

struct app: View {
    var icon = UIImage()
    var appName = String()
    
    var body: some View {
        VStack {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(uiImage: icon)
                .cornerRadius(40)
        })
            Text(appName)
        }
        
    }
}

struct app_Previews: PreviewProvider {
    static var previews: some View {
        app()
    }
}
