//
//  OrderView.swift
//  Appetizers-SwiftUI
//
//  Created by Itamar Axelrad on 19/04/2024.
//

import SwiftUI

struct OrderView: View {

    @EnvironmentObject private var order: Order

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())

                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }

                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. Please add an appetizer!")
                }
            }
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
