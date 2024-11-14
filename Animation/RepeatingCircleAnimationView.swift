//
//  RepeatingCircleAnimationView.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct RepeatingCircleAnimationView: View {
  @State private var isAnimating = false
  
  var body: some View {
    VStack {
      Button("Start Repeating Animation") {
        withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)) {
          isAnimating.toggle()
        }
      }
      .padding()
      .background(Color.blue)
      .foregroundColor(.white)
      .cornerRadius(8)
      
      Circle()
        .fill(Color.purple)
        .frame(width: isAnimating ? 200 : 100, height: isAnimating ? 200 : 100)
    }
  }
}
