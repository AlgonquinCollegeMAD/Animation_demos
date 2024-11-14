//
//  CountdownCircleView.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct CountdownCircleView: View {
  @State private var progress: CGFloat = 0.0
  
  var body: some View {
    VStack {
      Button("Start Countdown") {
        withAnimation(.easeInOut(duration: 5)) {
          progress = 1.0
        }
      }
      .padding()
      .background(Color.blue)
      .foregroundColor(.white)
      .cornerRadius(8)
      
      Circle()
        .trim(from: 0, to: progress)
        .stroke(Color.green, lineWidth: 10)
        .frame(width: 150, height: 150)
        .rotationEffect(.degrees(-90)) // Start at the top
        .onAppear { progress = 0 } // Reset progress on appear
    }
  }
}
