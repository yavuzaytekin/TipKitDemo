//
//  PopoverView.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import SwiftUI
import TipKit

struct PopoverView: View {
    let favoriteTip = FavoriteTip(id: "PopoverViewTip")

    var body: some View {
        Text("Hello user")
        Button {
            favoriteTip.invalidate(reason: .actionPerformed)
        } label: {
            Label("Favorite", systemImage: "star")
        }.popoverTip(favoriteTip)
    }
}

#Preview {
    PopoverView()
}
