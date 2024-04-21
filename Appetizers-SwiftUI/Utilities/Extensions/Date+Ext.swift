//
//  Date+Ext.swift
//  Appetizers-SwiftUI
//
//  Created by Itamar Axelrad on 21/04/2024.
//

import Foundation

extension Date {

    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }

    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
