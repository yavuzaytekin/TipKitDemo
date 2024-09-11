//
//  TipKitDemoSwiftUIApp.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 7.09.2024.
//

import SwiftUI
import TipKit

@main
struct TipKitDemoSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init() {
        do {
            try Tips.resetDatastore()
            // Configure and load all tips in the app.
            try Tips.configure()
        }
        catch {
            print("Error initializing tips: \(error)")
        }
    }
}
