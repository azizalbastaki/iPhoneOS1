//
//  homeButton.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 10/06/2021.
//

import SwiftUI

struct homeButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack{
                Circle()
                    .fill(RadialGradient(gradient: Gradient(colors: [Color.white, Color.black]), center: .bottom, startRadius:-0.02, endRadius: 40))
                    .frame(width:100 , height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                Circle()
                    .strokeBorder(Color.white, lineWidth: 0.3)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                RoundedRectangle(cornerRadius:10, style: .continuous)
                    .stroke(Color.white, lineWidth:2)
                    .frame(width: 40, height: 40, alignment: .center)
                    
                
                }
        })
        
        }
    }


struct homeButton_Previews: PreviewProvider {
    static var previews: some View {
        homeButton()
    }
}
