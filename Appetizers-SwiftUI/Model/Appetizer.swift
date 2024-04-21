//
//  Appetizer.swift
//  Appetizers-SwiftUI
//
//  Created by Itamar Axelrad on 19/04/2024.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Asian Flank Steak",
                                           description: "This perfectly thin cut just melts in your mouth.",
                                           price: 8.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)

    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]

    static let orderItemOne = Appetizer(id: 1,
                                        name: "Test Appetizer 1",
                                        description: "This is the description for appetizer 1.",
                                        price: 8.99,
                                        imageURL: "",
                                        calories: 99,
                                        protein: 99,
                                        carbs: 99)

    static let orderItemTwo = Appetizer(id: 2,
                                        name: "Test Appetizer 2",
                                        description: "This is the description for appetizer 2.",
                                        price: 8.99,
                                        imageURL: "",
                                        calories: 99,
                                        protein: 99,
                                        carbs: 99)

    static let orderItemThree = Appetizer(id: 3,
                                        name: "Test Appetizer 3",
                                        description: "This is the description for appetizer 3.",
                                        price: 8.99,
                                        imageURL: "",
                                        calories: 99,
                                        protein: 99,
                                        carbs: 99)

    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
