//
//  OrderView.swift
//  Appetizers-SwiftUI
//
//  Created by Itamar Axelrad on 19/04/2024.
//

import SwiftUI

struct OrderView: View {

    @State private var orderItems = MockData.orderItems
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(PlainListStyle())

                Button {
                    print("order placed")
                } label: {
                    APButton(title: "$99.99 - Place Order")
                }
                .padding(.bottom, 25)
            }
            .navigationTitle("🧾 Orders")
        }

        .enableInjection()
    }

    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }

    #if DEBUG
    @ObserveInjection var forceRedraw
    #endif
}

#Preview {
    OrderView()
}
