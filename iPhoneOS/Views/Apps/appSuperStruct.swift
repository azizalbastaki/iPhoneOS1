//
//  appSuperStruct.swift
//  iPhoneOS
//
//  Created by Aziz AlBastaki on 05/07/2021.
//

import SwiftUI

struct appSuperStruct: View {
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


struct APPP: View {
    var body: some View {
        VStack {
            Spacer()
        Text("Hello, World!")
            Spacer()
        }
            .background(Color.white)
    }
}
