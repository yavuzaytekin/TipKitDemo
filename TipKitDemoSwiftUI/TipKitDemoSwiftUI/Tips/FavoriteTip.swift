//
//  FavoriteTip.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import Foundation
import TipKit

protocol FavoriteTipBluePrint: Tip { }

extension FavoriteTipBluePrint {
    var title: Text {
        Text("Save as a Favorite")
    }

    var message: Text? {
        Text("Click to button to save as a favorite.")
    }

    var image: Image? {
        Image(systemName: "star")
    }
}

struct FavoriteTip: FavoriteTipBluePrint {
    var id: String
}
