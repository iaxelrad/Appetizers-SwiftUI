//
//  EmptyStateView.swift
//  Appetizers-SwiftUI
//
//  Created by Itamar Axelrad on 21/04/2024.
//

import SwiftUI

struct EmptyState: View {

    let imageName: String
    let message: String

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)

                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
        .enableInjection()
    }

    #if DEBUG
    @ObserveInjection var forceRedraw
    #endif
}

#Preview {
    EmptyState(imageName: "empty-order", message: "This is our test message.\nI'm making this extra long for testing")
}
