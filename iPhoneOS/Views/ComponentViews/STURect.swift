//
//  STURect.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 19/06/2021.
import SwiftUI

struct STURect: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [justBlack, Color.gray]), startPoint: .center, endPoint: .top))
                .frame(height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, -8)
                .opacity(0.6)
                
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.black, justGray]), startPoint: .center, endPoint: .bottom))
                .frame(width: 300, height: 60, alignment: .center)
                .cornerRadius(10)
                .opacity(0.8)
            STUgradient()
                .frame(width: 300, height: 20, alignment: .center)
            
                .mask(
            Text("slide to unlock")
                .font(.custom("Helvetica", size: 25))
                .frame(width: 300, height: 20, alignment: .center)
                .offset(x: 50)
                .hueRotation(.degrees(true ? 0: 720))
                .animation(Animation.linear(duration: 1).repeatForever().speed(100))
                )
        }
        
    }
}

struct STUgradient: View {
    @State var xPoint: CGFloat = -1
    @State private var startPoint = UnitPoint(x: 0, y: 0.5)
    @State private var endPoint = UnitPoint(x: 0.45, y: 0.5)

    var body: some View {
        Rectangle()
            .fill(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white, Color.gray]), startPoint: startPoint, endPoint: endPoint))
            .onAppear {
                xPoint = CGFloat(0.0)
                startPoint = UnitPoint(x: xPoint, y: 0.5)
                
                withAnimation(.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                    startPoint = UnitPoint(x: 1, y: 0)
                    endPoint = UnitPoint(x: 1.5, y: 0)

                }
            }
            
                
            
            
            
    }
    
}

struct lockScreen_Previews: PreviewProvider {
    static var previews: some View {
        STURect()
    }
}
