//
//  AnimationView2.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct AnimationView2: View {
  @State private var isAnimating = false
  
  var body: some View {
    VStack {
      Button("Animate") {
        isAnimating.toggle()
      }
      
      Rectangle()
            .fill(isAnimating ? Color.green : Color.red)
        .frame(width: 100, height: 50)
        .rotationEffect(.degrees(isAnimating ? -180 : 0))
        .animation(.easeInOut(duration: 1), value: isAnimating)
    }
  }
}

#Preview {
  AnimationView2()
}
