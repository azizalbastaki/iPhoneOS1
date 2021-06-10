//
//  homeButton.swift
//  iPhoneOS
//
//  Created by Aziz AlBastaki on 10/06/2021.
//

import SwiftUI

struct homeButton: View {
    var body: some View {
            ZStack{
                Color.black
                ZStack{
                    
                Circle()
                    //.fill(LinearGradient(gradient: Gradient(colors: [Color.black, Color.white]), startPoint: .center, endPoint: .bottom))
                    .fill(RadialGradient(gradient: Gradient(colors: [Color.white, Color.black]), center: .bottom, startRadius:10, endRadius: 300))
                Circle()
                    .strokeBorder(Color.white, lineWidth: 0.3)
                RoundedRectangle(cornerRadius: 55, style: .continuous)
                    .stroke(Color.white, lineWidth: 10)
                    .frame(width: 220, height: 220, alignment: .center)
                
                }
            }
        
        }
    }


struct homeButton_Previews: PreviewProvider {
    static var previews: some View {
        homeButton()
    }
}
