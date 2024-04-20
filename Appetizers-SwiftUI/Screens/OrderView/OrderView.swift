//
//  OrderView.swift
//  Appetizers-SwiftUI
//
//  Created by Itamar Axelrad on 19/04/2024.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Orders")
                .navigationTitle("🧾 Orders")
        }
        .enableInjection()
    }

    #if DEBUG
    @ObserveInjection var forceRedraw
    #endif
}
#Preview {
    OrderView()
}
