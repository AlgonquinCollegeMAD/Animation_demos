//
//  AnimationView3.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//

import SwiftUI

struct AnimationView3: View {
  @State private var isAnimating = false
  
  var body: some View {
    VStack {
      Button("Animate") {
        isAnimating.toggle()
      }
      
      Circle()
          .fill(Color.blue)
          .frame(width: isAnimating ? 200 : 100, height: isAnimating ? 200 : 100)
          .animation(.spring(response: 0.5, dampingFraction: 0.1, blendDuration: 5.0), value: isAnimating)
    }
  }
}

#Preview {
  AnimationView3()
}
