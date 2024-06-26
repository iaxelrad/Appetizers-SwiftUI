//
//  AppetizerListCell.swift
//  Appetizers-SwiftUI
//
//  Created by Itamar Axelrad on 19/04/2024.
//

import SwiftUI

struct AppetizerListCell: View {

    let appetizer: Appetizer
    var body: some View {
        HStack {
//            AppetizerRemoteImage(urlString: appetizer.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .cornerRadius(8)

            AsyncImage(url: URL(string:appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
            }

            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)

                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
        .alignmentGuide(.listRowSeparatorLeading) { viewDimensions in return 0 }
        .enableInjection()
    }

    #if DEBUG
    @ObserveInjection var forceRedraw
    #endif
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
