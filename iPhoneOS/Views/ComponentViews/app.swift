//
//  app.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 09/06/2021.
//

import SwiftUI

struct app: View {
    var icon = UIImage()
    var appName = String()
    var appExecutable = SettingsApp()
    var body: some View {
        VStack {
            NavigationLink(
                destination: appExecutable,
                label: {
                    Image(uiImage: icon)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 60, height: 60, alignment: .center)
                })
            
            
            Text(appName).font(.system(size:14))
                .foregroundColor(.white)
                .bold()
        }
        
    }
}





//struct app_Previews: PreviewProvider {
//    static var previews: some View {
//        app()
//    }
//}
