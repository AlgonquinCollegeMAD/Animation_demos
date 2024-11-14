//
//  RotateAndColorChangeView.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct RotateAndColorChangeView: View {
  @State private var isRotating = false
  
  var body: some View {
    VStack {
      Button("Start Animation") {
        isRotating.toggle()
      }
      .padding()
      .background(Color.blue)
      .foregroundColor(.white)
      .cornerRadius(8)
      
      Rectangle()
        .fill(isRotating ? Color.green : Color.red)
        .frame(width: 100, height: 100)
        .rotationEffect(.degrees(isRotating ? 180 : 0))
        .animation(.easeInOut(duration: 2), value: isRotating)  // Rotation duration
        .animation(.easeInOut(duration: 4), value: isRotating)  // Color change duration
    }
  }
}
