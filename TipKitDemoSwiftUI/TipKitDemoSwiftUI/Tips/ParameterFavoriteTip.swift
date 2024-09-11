//
//  ParameterFavoriteTip.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import Foundation
import TipKit

protocol ParameterFavoriteTipBluePrint: FavoriteTipBluePrint { }

struct ParameterFavoriteTip: ParameterFavoriteTipBluePrint {
    @Parameter static var isLoggedIn: Bool = false
    
    var id: String
    
    var rules: [Rule] {
        #Rule(Self.$isLoggedIn) {
            $0 == true
        }
    }
}
