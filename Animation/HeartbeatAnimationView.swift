//
//  HeartbeatAnimationView.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct HeartbeatAnimationView: View {
  @State private var isPulsating = false
  
  var body: some View {
    VStack {
      Button("Heartbeat") {
        withAnimation(Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true)) {
          isPulsating.toggle()
        }
      }
      .padding()
      .background(Color.pink)
      .foregroundColor(.white)
      .cornerRadius(8)
      
      Image(systemName: "heart.fill")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: isPulsating ? 130 : 100, height: isPulsating ? 130 : 100)
        .foregroundColor(.red)
    }
  }
}
