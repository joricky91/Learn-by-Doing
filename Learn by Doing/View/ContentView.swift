//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Jonathan Ricky Sandjaja on 09/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cardData) { item in
                    CardView(card: item)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
