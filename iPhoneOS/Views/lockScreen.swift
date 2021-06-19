//
//  lockScreen.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 13/06/2021.
//

import SwiftUI

let startingPoint: Int = 0

struct lockScreen: View {
    @State fileprivate var progress:CGSize = CGSize(width: CGFloat(startingPoint), height: 0)
    
    @ObservedObject var currentState: currentView
    var body: some View {
            VStack {
                iPhoneOS.statusBar()
                dateAndTime()
                ZStack {
                    HStack {
                        STUButton()
                            .offset(x: isDragValid(drag: progress))
                            .gesture(
                                DragGesture()
                                    .onChanged {
                                        progress = $0.translation
                                        progress.width = progress.width - CGFloat(startingPoint)
                                        if checkDragUnlocked(drag: progress) == true {
                                            progress.width = CGFloat(startingPoint)
                                            currentState.locked = false
                                        }
                                    }
                                    .onEnded {_ in
                                        progress.width = CGFloat(startingPoint)
                                    }
                            )
                            .padding(.leading, 70)
                        Spacer()
                    }
                }
                Spacer()
            }
            //.offset(y: 40)
            .background(
                ZStack {
                    Color.black
                        .ignoresSafeArea()
                    
                    Image("DisneyCruise")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
            )
        
    }
}

func isDragValid(drag: CGSize) -> CGFloat {
    if drag.width > CGFloat(startingPoint) {
        return drag.width
    }
    else {
        return CGFloat(startingPoint)
    }
}

func checkDragUnlocked(drag: CGSize) -> Bool {
    if drag.width >= 150 {
        return true
    } else {
        return false
    }
}

struct dateAndTime: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray]), startPoint: .center, endPoint: .top))
                .frame(height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, -8)
                .opacity(0.6)
            VStack {
                
                Text("9:41")
                    .font(.custom("Helvetica", size: 100))
                    .fontWeight(.light)
                Text("Thursday, February 24")
                    .font(.custom("Helvetica", size: 20))
                    //.fontWeight(.light)
            }.foregroundColor(.white)
        }
        
    }
}

struct lockScreen_Previews: PreviewProvider {
    static var previews: some View {
        dateAndTime()
    }
}
