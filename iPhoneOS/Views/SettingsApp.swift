//
//  SettingsApp.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 09/06/2021.
//

import SwiftUI

struct SettingsApp: View {
    @State var transitionSize = 0
    var body: some View {
        Rectangle()
            .scale(CGFloat(transitionSize))
            .animation(Animation.easeIn(duration: 0.3), value: transitionSize)
            .onAppear {transitionSize = 1}
            .onDisappear{transitionSize = 0}
    }
    
}

//struct SettingsApp_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsApp()
//    }
//}
