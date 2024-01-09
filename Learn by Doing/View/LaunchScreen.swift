//
//  LaunchScreen.swift
//  Learn by Doing
//
//  Created by Jonathan Ricky Sandjaja on 09/01/24.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var isActive: Bool = false
    
    var body: some View {
//        NavigationView {
//            ZStack {
//                Image("LaunchScreen")
//                
//                VStack {
//                    Image("logo-swift-outlined")
//                    
//                    Text("Learn by Doing")
//                        .foregroundColor(.white)
//                        .font(.largeTitle)
//                        .fontWeight(.light)
//                }
//                
//                NavigationLink(destination: ContentView(), isActive: self.$isActive) {
//                    EmptyView()
//                }
//            }
//            .onAppear {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                    self.isActive = true
//                }
//            }
//        }
        if !isActive {
            ZStack {
                Image("LaunchScreen")
                
                VStack {
                    Image("logo-swift-outlined")
                    
                    Text("Learn by Doing")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.light)
                }
                
                NavigationLink(destination: ContentView(), isActive: self.$isActive) {
                    EmptyView()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation(.easeOut) {
                        self.isActive = true
                    }
                }
            }
        } else {
            ContentView()
        }
    }
}

#Preview {
    LaunchScreen()
}
