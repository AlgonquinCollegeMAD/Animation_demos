//
//  ColorChangingProgressRingView.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct ColorChangingProgressRingView: View {
  @State private var progress: CGFloat = 0.0
  
  var body: some View {
    VStack {
      Slider(value: $progress, in: 0...1)
        .padding()
      
      Circle()
        .trim(from: 0, to: progress)
        .stroke(
          progress < 0.5 ? Color.blue : (progress < 0.8 ? Color.orange : Color.red),
          lineWidth: 15
        )
        .frame(width: 150, height: 150)
        .rotationEffect(.degrees(-90)) // Start at the top
        .animation(.easeInOut, value: progress)
    }
    .padding()
  }
}
