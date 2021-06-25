//
//  lockScreen.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 13/06/2021.
//

import SwiftUI
import AVFoundation
var unlockSound: AVAudioPlayer!


let startingPoint: Int = 0

struct lockScreen: View {
    @State var progress:CGSize = CGSize(width: CGFloat(startingPoint), height: 0)

    @ObservedObject var currentState: currentView
    var body: some View {
            VStack {
                iPhoneOS.statusBar()
                dateAndTime()
                Spacer()
                ZStack{
                    STURect()
                    STURectSlideArea()
                        .opacity(1-(Double((-0.01*progress.width)+1)))
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
                                                playUnlockSound()
                                            }
                                        }
                                        .onEnded {_ in
                                            progress.width = CGFloat(startingPoint)
                                        }
                                )
                                .padding(.leading, 50)
                            Spacer()
                        }
                    }
                }
            }
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
    if drag.width >= 210 {
        return true
    } else {
        return false
    }
}

func playUnlockSound() {
    let path = Bundle.main.url(forResource: "unlock", withExtension: "mp3")
    do {
        unlockSound = try AVAudioPlayer(contentsOf: path!)
        unlockSound?.play()
    } catch {
        print("Eeek!")
    }
}

struct dateAndTime: View {
    @State private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var currentTime: String = ""
    @State private var currentday: String = ""
    private let dateFormatter = DateFormatter()

    private let timeFormatter = DateFormatter()
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [justBlack, Color.gray]), startPoint: .center, endPoint: .top))
                .frame(height: 150, alignment: .center)
                .opacity(0.6)
            VStack {
                
                Text(currentTime)
                    .font(.custom("Helvetica", size: 100))
                    .fontWeight(.light)
                    .onReceive(timer) { _ in
                        self.currentTime = timeFormatter.string(from: Date())
                    }
                    .onAppear(perform: {timeFormatter.dateFormat = "h:mm"})
                Text(currentday)
                    .font(.custom("Helvetica", size: 20))
                    .onReceive(timer) { _ in
                        self.currentday = dateFormatter.string(from: Date())
                    }
                    .onAppear(perform: {dateFormatter.dateFormat = "EEEE, MMMM d"})
            }.foregroundColor(.white)
        }                .padding(.top, -10)

        
    }
}
