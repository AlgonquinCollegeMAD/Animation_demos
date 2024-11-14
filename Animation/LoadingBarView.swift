//
//  LoadingBarView.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct LoadingBarView: View {
  @State private var animateGradient = false
  
  var body: some View {
    VStack {
      Rectangle()
        .fill(LinearGradient(
          gradient: Gradient(colors: [.blue, .purple, .blue]),
          startPoint: .leading,
          endPoint: .trailing
        ))
        .frame(width: 200, height: 20)
        .mask(
          Rectangle()
            .offset(x: animateGradient ? 200 : -200)
            .frame(width: 200, height: 20)
            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false), value: animateGradient)
        )
        .onAppear { animateGradient = true }
    }
  }
}
