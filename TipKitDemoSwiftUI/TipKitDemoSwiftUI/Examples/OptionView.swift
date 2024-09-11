//
//  OptionView.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import Foundation
import TipKit

struct OptionView: View {
    let favoriteTip = OptionFavoriteTip(id: "OptionView")
    
    var body: some View {
        Text("Hello user")
        TipView(favoriteTip, arrowEdge: .bottom)
        Button {
            
        } label: {
            Label("Favorite", systemImage: "star")
        }
    }
}
