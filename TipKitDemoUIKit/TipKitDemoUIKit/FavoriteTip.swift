//
//  FavoriteTip.swift
//  TipKitDemoUIKit
//
//  Created by Yavuz Aytekin on 9.09.2024.
//

import Foundation
import TipKit

struct FavoriteTip: Tip {
    var id: String
    
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
