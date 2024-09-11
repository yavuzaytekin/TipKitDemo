//
//  ActionFavoriteTip.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import Foundation
import TipKit

protocol ActionFavoriteTipBluePrint: FavoriteTipBluePrint { }

struct ActionFavoriteTip: ActionFavoriteTipBluePrint {
    var id: String
    
    var actions: [Action] {
        Action(id: "learn-more", title: "Learn More")
    }
}
