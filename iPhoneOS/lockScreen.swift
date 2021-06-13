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
    @State fileprivate var text = String()
    var body: some View {
        ZStack {
        Color.black
        Text(text)
            
            
            HStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [slideToUnlockTop, slideToUnlockBottom]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 90, height: 60, alignment: .center)
                    .cornerRadius(10)
                    .offset(x: isDragValid(drag: progress))
                    .padding(.leading, 50)
                    .gesture(
                        DragGesture()
                            .onChanged {
                                progress = $0.translation
                                progress.width = progress.width - CGFloat(startingPoint)
                                if checkDragUnlocked(drag: progress) == true {
                                    text = "Unlocked"
                                    progress.width = CGFloat(startingPoint)
                                }
                            }
                            .onEnded {_ in
                                progress.width = CGFloat(startingPoint)
                            }
                        
                        
                    )
                Spacer()
            }
        }
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


struct lockScreen_Previews: PreviewProvider {
    static var previews: some View {
        lockScreen()
    }
}
