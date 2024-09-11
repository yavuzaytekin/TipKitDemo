//
//  ActionView.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import SwiftUI

struct ActionView: View {
    let favoriteTip = ActionFavoriteTip(id: "ActionsView")

    var body: some View {
        Text("Hello user")
        Button {
            favoriteTip.invalidate(reason: .actionPerformed)
        } label: {
            Label("Favorite", systemImage: "star")
        }.popoverTip(favoriteTip) { action in
            if action.id == "learn-more" {
                print("Go to Learn More")
            }
        }
    }
}

#Preview {
    ActionView()
}
