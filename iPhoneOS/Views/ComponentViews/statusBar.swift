//
//  statusBar.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 15/06/2021.
//

import SwiftUI

struct statusBar: View {
    var body: some View {
        HStack {
            Text("No Service")
            Spacer()
            Text("9:41 AM")
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
