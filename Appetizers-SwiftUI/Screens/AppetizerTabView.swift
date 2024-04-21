//
//  ContentView.swift
//  Appetizers-SwiftUI
//
//  Created by Itamar Axelrad on 19/04/2024.
//

import SwiftUI

struct AppetizerTabView: View {

    @EnvironmentObject var order: Order

    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }

            AccountView()
                .tabItem { Label("Account", systemImage: "person") }

            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
        .enableInjection()
    }

    #if DEBUG
    @ObserveInjection var forceRedraw
    #endif
}

#Preview {
    AppetizerTabView()
}
