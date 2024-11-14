//
//  SequentialAnimationsView.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct SequentialAnimationsView: View {
  @State private var animateFirst = false
  @State private var animateSecond = false
  @State private var animateThird = false
  
  var body: some View {
    VStack {
      Button("Start Sequential Animation") {
        withAnimation(.easeIn(duration: 1)) {
          animateFirst.toggle()
        }
        withAnimation(.easeIn(duration: 1).delay(1)) {
          animateSecond.toggle()
        }
        withAnimation(.easeIn(duration: 1).delay(2)) {
          animateThird.toggle()
        }
      }
      .padding()
      .background(Color.blue)
      .foregroundColor(.white)
      .cornerRadius(8)
      
      HStack {
        Circle()
          .fill(animateFirst ? Color.green : Color.blue)
          .frame(width: 50, height: 50)
        
        Rectangle()
          .fill(animateSecond ? Color.yellow : Color.red)
          .frame(width: 50, height: 50)
        
        Capsule()
          .fill(animateThird ? Color.pink : Color.purple)
          .frame(width: 50, height: 100)
      }
    }
  }
}
