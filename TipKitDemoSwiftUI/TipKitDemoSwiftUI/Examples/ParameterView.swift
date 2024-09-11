//
//  ParameterView.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import SwiftUI
import TipKit

struct ParameterView: View {
    let favoriteTip = ParameterFavoriteTip(id: "ParameterView")
    
    var body: some View {
        Text("You can save as a favorite when you are logged in")
        TipView(favoriteTip, arrowEdge: .bottom)
        Button {
            ParameterFavoriteTip.isLoggedIn.toggle()
        } label: {
            Label("Favorite", systemImage: "star")
        }
    }
}

#Preview {
    ParameterView()
}
