//
//  ExpandingListView.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import SwiftUI

struct ExpandingListView: View {
  @State private var selectedItem: Int? = nil
  
  var body: some View {
    List(0..<5) { index in
      VStack(alignment: .leading) {
        Text("Item \(index)")
          .font(.headline)
          .padding(.bottom, selectedItem == index ? 5 : 0)
        
        if selectedItem == index {
          Text("This is more detailed information about item \(index).")
            .transition(.opacity)
            .animation(.easeInOut, value: selectedItem)
        }
      }
      .contentShape(Rectangle())
      .onTapGesture {
        withAnimation {
          selectedItem = selectedItem == index ? nil : index
        }
      }
    }
  }
}
