//
//  AnimationView6.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//

import SwiftUI

struct AnimationView6: View {
  @State private var isAnimating = false
  
  var body: some View {
    VStack {
      Button("Animate") {
        withAnimation(Animation.interpolatingSpring(stiffness: 100, damping: 10)) {
          isAnimating.toggle()
        }
      }
      
      Circle()
        .fill(isAnimating ? Color.orange : Color.red)
        .frame(width: isAnimating ? 200 : 100, height: isAnimating ? 200 : 100)
    }
  }
}

#Preview {
  AnimationView6()
}
