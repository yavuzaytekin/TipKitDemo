//
//  InlineView.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import SwiftUI
import TipKit

struct InlineView: View {
    let favoriteTip = FavoriteTip(id: "InlineView")
    
    var body: some View {
        Text("Hello user")
        TipView(favoriteTip, arrowEdge: .bottom)
        Button {
            favoriteTip.invalidate(reason: .actionPerformed)
        } label: {
            Label("Favorite", systemImage: "star")
        }
    }
}

#Preview {
    InlineView()
}
