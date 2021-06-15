//
//  STUButton.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 14/06/2021.
//

import SwiftUI

struct STUButton: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [slideToUnlockTop, slideToUnlockBottom]), startPoint: .top, endPoint: .center))
                .frame(width: 80, height: 50, alignment: .center)
                .cornerRadius(10)
            ZStack{
            Triangle()
                .fill(slideToUnlockArrow)
                .frame(width: 20, height: 25, alignment: .center)
                .offset(x: 11)
            Rectangle()
                .fill(slideToUnlockArrow)
                .frame(width: 23, height: 13, alignment: .center)
                .offset(x: -10)
            
            }.scaleEffect(1)
            
        }
        
    }
}

struct STUButton_Previews: PreviewProvider {
    static var previews: some View {
        STUButton()
    }
}
