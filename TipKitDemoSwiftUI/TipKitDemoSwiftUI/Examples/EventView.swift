//
//  EventView.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import SwiftUI
import TipKit

struct EventView: View {
    let favoriteTip = EventFavoriteTip(id: "EventView")
    
    var body: some View {
        Text("Hello user")
        TipView(favoriteTip, arrowEdge: .bottom)
        Button {
            EventFavoriteTip.didTappedBtnEvent.sendDonation()
        } label: {
            Label("Tap three times", systemImage: "star")
        }
    }
}

#Preview {
    EventView()
}
