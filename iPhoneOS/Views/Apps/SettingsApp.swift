//
//  SettingsApp.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 09/06/2021.
//

import SwiftUI

struct SettingsApp: View {
    @State var transitionSize = 0
    let app = APPP()
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                app
                .scaleEffect(CGFloat(transitionSize))
                .animation(Animation.easeIn(duration: 0.3), value: transitionSize)
                .onAppear {transitionSize = 1}
                .onDisappear{transitionSize = 0}
        }
    }
}


//struct SettingsApp_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsApp()
//    }
//}
