//
//  CustomTipStyleView.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import Foundation
import TipKit

struct CustomTipStyleView: View {
    let favoriteTip = FavoriteTip(id: "CustomTipStyleView")
    
    var body: some View {
        Text("Hello user")
        TipView(favoriteTip, arrowEdge: .bottom)
            .tipViewStyle(HeadlineTipViewStyle())
        Button {
            favoriteTip.invalidate(reason: .actionPerformed)
        } label: {
            Label("Favorite", systemImage: "star")
        }
    }
}
