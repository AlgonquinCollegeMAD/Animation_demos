//
//  BounceAnimationView.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct BounceAnimationView: View {
  @State private var isBouncing = false
  
  var body: some View {
    VStack {
      Button("Bounce") {
        withAnimation(Animation.interpolatingSpring(stiffness: 100, damping: 2)) {
          isBouncing.toggle()
        }
      }
      .padding()
      .background(Color.blue)
      .foregroundColor(.white)
      .cornerRadius(8)
      
      Circle()
        .fill(Color.orange)
        .frame(width: isBouncing ? 150 : 100, height: isBouncing ? 150 : 100)
        .animation(Animation.interpolatingSpring(stiffness: 100, damping: 2), value: isBouncing)
    }
  }
}
