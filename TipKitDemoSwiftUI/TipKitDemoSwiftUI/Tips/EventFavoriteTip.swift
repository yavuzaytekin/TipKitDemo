//
//  EventFavoriteTip.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import Foundation
import TipKit

protocol EventFavoriteTipBluePrint: FavoriteTipBluePrint { }

struct EventFavoriteTip: EventFavoriteTipBluePrint {
    static let didTappedBtnEvent = Event(id: "didTappedBtnEvent")
    
    var id: String
    
    var rules: [Rule] {
        #Rule(Self.didTappedBtnEvent) {
            $0.donations.count >= 3
        }
    }
}
