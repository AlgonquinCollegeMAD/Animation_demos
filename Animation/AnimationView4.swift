//
//  AnimationView4.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct AnimationView4: View {
  @State private var isAnimating = false
  
  var body: some View {
    VStack {
      HStack {
        Button("Start Animation") {
          isAnimating = true
        }
        
        Button("Stop Animation") {
          isAnimating = false
        }
      }
      
      Rectangle()
        .fill(Color.purple)
        .frame(width: isAnimating ? 200 : 100, height: isAnimating ? 200 : 100)
        .rotationEffect(.degrees(isAnimating ? 360 : 0))
        .animation(isAnimating ? Animation.easeInOut(duration: 1).repeatForever(autoreverses: true) : .default, value: isAnimating)
    }
  }
}

#Preview {
  AnimationView4()
}
