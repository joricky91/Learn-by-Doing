//
//  CardModel.swift
//  Learn by Doing
//
//  Created by Jonathan Ricky Sandjaja on 09/01/24.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
