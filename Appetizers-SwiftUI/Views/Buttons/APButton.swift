//
//  APButton.swift
//  Appetizers-SwiftUI
//
//  Created by Itamar Axelrad on 20/04/2024.
//

import SwiftUI

struct APButton: View {

    let title: LocalizedStringKey

    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
        .enableInjection()
    }

    #if DEBUG
    @ObserveInjection var forceRedraw
    #endif
}

#Preview {
    APButton(title: "Test Title")
}
