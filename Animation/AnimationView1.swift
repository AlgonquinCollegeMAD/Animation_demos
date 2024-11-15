//
//  AnimationView1.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//

import SwiftUI

struct AnimationView1: View {
  @State private var isExpanded = false
  
  var body: some View {
    VStack {
      HStack {
        Button(action: {
          isExpanded.toggle()
        }) {
          Text("Toggle")
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        Button(action: {
//            withAnimation(.easeInOut(duration: 3.0)) { // Method 1
            isExpanded.toggle()
//          }
        }) {
          Text("Toggle Animated")
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
      }
      
      Rectangle()
            .fill(isExpanded ? Color.red : Color.blue)
        .frame(width: isExpanded ? 200 : 100, height: 100)
        .animation(.easeInOut(duration: 0.5), value: isExpanded) // Method 2
    }
  }
}

#Preview {
  AnimationView1()
}
