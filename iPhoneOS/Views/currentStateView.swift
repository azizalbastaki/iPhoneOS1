//
//  currentStateView.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 14/06/2021.
//

import SwiftUI

struct currentStateView: View {
    @StateObject var state = currentView()
    var body: some View {
        switch state.locked {
        case true:
            lockScreen(currentState: state)
                .statusBar(hidden: true)
        default:
            ContentView()
                .statusBar(hidden: true)
        }
    }
}

struct currentStateView_Previews: PreviewProvider {
    static var previews: some View {
        currentStateView()
    }
}

class currentView: ObservableObject {
    @Published var locked = true
}
