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
            //.offset(y:50)
        }.ignoresSafeArea()
        
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

//
//struct lockScreen_Previews: PreviewProvider {
//    static var previews: some View {
//
//        lockScreen(currentState: state)
//    }
//}