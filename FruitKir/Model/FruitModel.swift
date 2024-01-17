//
//  FruitModel.swift
//  FruitKir
//
//  Created by Test on 17.09.23.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
}
