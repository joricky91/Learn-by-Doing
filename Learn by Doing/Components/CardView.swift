//
//  CardView.swift
//  Learn by Doing
//
//  Created by Jonathan Ricky Sandjaja on 09/01/24.
//

import SwiftUI

struct CardView: View {
    var card: Card
    
    @State private var fadeIn: Bool = false
    @State private var moveDownward: Bool = false
    @State private var moveUpward: Bool = false
    
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1 : 0)
            
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            }
            .offset(y: moveDownward ? -218 : -300)
            
            Button {
                playSound(sound: "sound-chime", type: "mp3")
            } label: {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .accentColor(.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(.white)
                }
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(
                    LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing)
                )
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y: moveUpward ? 210 : 300)
        }
        .frame(width: 335, height: 545)
        .background(
            LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear {
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
            }
            
            withAnimation(.linear(duration: 0.8)) {
                self.moveDownward.toggle()
                self.moveUpward.toggle()
            }
        }
    }
}

#Preview {
    CardView(card: cardData[1])
}
