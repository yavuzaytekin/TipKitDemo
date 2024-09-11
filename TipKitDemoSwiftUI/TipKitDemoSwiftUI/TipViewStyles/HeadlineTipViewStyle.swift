//
//  HeadlineTipViewStyle.swift
//  TipKitDemoSwiftUI
//
//  Created by Yavuz Aytekin on 8.09.2024.
//

import Foundation
import TipKit

struct HeadlineTipViewStyle: TipViewStyle {
    func makeBody(configuration: TipViewStyle.Configuration) -> some View {
        VStack(alignment: .leading) {
            HStack {
                Text("TIP").font(.system(.headline).smallCaps())
                Spacer()
                Button(action: { configuration.tip.invalidate(reason: .tipClosed) }) {
                    Image(systemName: "xmark").scaledToFit()
                }
            }
            .padding([.top, .leading, .trailing])

            Divider().frame(height: 1.0)

            HStack(alignment: .center) {
                configuration.image?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48.0, height: 48.0)

                VStack(alignment: .leading, spacing: 8.0) {
                    configuration.title?.font(.headline)
                    configuration.message?.font(.subheadline)

                    ForEach(configuration.actions) { action in
                        Button(action: action.handler) {
                            action.label().foregroundStyle(.blue)
                        }
                    }
                }
            }
            .padding(.all)
        }
    }
}
