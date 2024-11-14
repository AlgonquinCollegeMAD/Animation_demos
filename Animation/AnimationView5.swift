//
//  AnimationView5.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct AnimationView5: View {
  @State private var isAnimating = false
  
  var body: some View {
    VStack {
      Button("Animate") {
        withAnimation(.easeInOut(duration: 2)) {
          isAnimating.toggle()
        }
      }
      
      ZStack {
        Circle()
          .fill(Color.red)
          .frame(width: isAnimating ? 100 : 50, height: isAnimating ? 100 : 50)
        
        Rectangle()
          .fill(Color.blue)
          .frame(width: isAnimating ? 100 : 50, height: isAnimating ? 100 : 50)
          .offset(x: isAnimating ? 50 : -50, y: isAnimating ? 50 : -50)
      }
    }
  }
}

#Preview {
  AnimationView5()
}
