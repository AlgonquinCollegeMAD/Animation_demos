//
//  CardFlipView.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct CardFlipView: View {
  @State private var isFlipped = false
  
  var body: some View {
    VStack {
      Button("Flip Card") {
        withAnimation(.easeInOut(duration: 1)) {
          isFlipped.toggle()
        }
      }
      .padding()
      .background(Color.blue)
      .foregroundColor(.white)
      .cornerRadius(8)
      
      ZStack {
        Rectangle()
          .fill(Color.red)
          .frame(width: 200, height: 120)
          .overlay(Text("Front").foregroundColor(.white))
          .opacity(isFlipped ? 0 : 1)
        
        Rectangle()
          .fill(Color.green)
          .frame(width: 200, height: 120)
          .overlay(Text("Back").foregroundColor(.white))
          .opacity(isFlipped ? 1 : 0)
      }
      .rotation3DEffect(.degrees(isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
    }
  }
}
