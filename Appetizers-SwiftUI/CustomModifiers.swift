//
//  CustomModifiers.swift
//  Appetizers-SwiftUI
//
//  Created by Itamar Axelrad on 21/04/2024.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content)  -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimaryOriginal)
            .controlSize(.large)
    }
}
