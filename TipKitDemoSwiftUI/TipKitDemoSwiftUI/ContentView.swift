//
//  ContentView.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 7.09.2024.
//

import SwiftUI
import TipKit

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Inline tip view") {
                    InlineView()
                }
                
                NavigationLink("Popover tip view") {
                    PopoverView()
                }
                
                NavigationLink("Tip actions") {
                    ActionView()
                }
                
                NavigationLink("Parameter rules") {
                    ParameterView()
                }
                
                NavigationLink("Event rules") {
                    EventView()
                }
                
                NavigationLink("Tip options") {
                    OptionView()
                }
                
                NavigationLink("Custom TipViewStyle") {
                    CustomTipStyleView()
                }
            }
            .navigationTitle("TipKit Examples")
        }
    }
}

