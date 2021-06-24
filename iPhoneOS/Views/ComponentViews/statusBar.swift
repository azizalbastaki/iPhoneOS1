//
//  statusBar.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 15/06/2021.
//

import SwiftUI

struct statusBar: View {
    
    @State private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var currentTime: String = ""
    private let dateFormatter = DateFormatter()
    var body: some View {
        HStack {
            Text("No Service")
            Spacer()
            Text(currentTime)
                .onReceive(timer) { _ in
                    self.currentTime = dateFormatter.string(from: Date())
                }
                .onAppear(perform: {dateFormatter.dateFormat = "h:mm a"})
            Spacer()
            Text("(BATTERY)")
        }
        .padding(.bottom, 0)
        .foregroundColor(.white)
        .background(Color.black
                        .opacity(0.5))

    }
}

struct statusBar_Previews: PreviewProvider {
    static var previews: some View {
        statusBar()
    }
}
