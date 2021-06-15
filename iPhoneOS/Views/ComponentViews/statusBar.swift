//
//  statusBar.swift
//  iPhoneOS
//
//  Created by Aziz AlBastaki on 15/06/2021.
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
        .foregroundColor(.white)
    }
}

struct statusBar_Previews: PreviewProvider {
    static var previews: some View {
        statusBar()
    }
}
