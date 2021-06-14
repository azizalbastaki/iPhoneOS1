//
//  STUButton.swift
//  iPhoneOS
//
//  Created by Aziz AlBastaki on 14/06/2021.
//

import SwiftUI

struct STUButton: View {
    var body: some View {
        ZStack {
        Rectangle()
            .fill(LinearGradient(gradient: Gradient(colors: [slideToUnlockTop, slideToUnlockBottom]), startPoint: .top, endPoint: .center))
            .frame(width: 90, height: 60, alignment: .center)
            .cornerRadius(10)
        Triangle()
            .frame(width: 30, height: 50, alignment: .center)
        }
    }
}

struct STUButton_Previews: PreviewProvider {
    static var previews: some View {
        STUButton()
    }
}
