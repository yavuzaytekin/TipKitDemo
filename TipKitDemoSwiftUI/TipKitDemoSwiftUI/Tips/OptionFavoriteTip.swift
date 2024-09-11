//
//  OptionFavoriteTip.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import Foundation

protocol OptionFavoriteTipBluePrint: FavoriteTipBluePrint { }

struct OptionFavoriteTip: OptionFavoriteTipBluePrint {
    
    var id: String
    
    var options: [Option] {
        MaxDisplayCount(1)
    }
}
