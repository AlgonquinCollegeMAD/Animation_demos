//
//  ContentView.swift
//  Animation
//
//  Created by Vladimir Cezar on 2024.11.14.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      List {
        NavigationLink("Animation 1", destination: AnimationView1())
        NavigationLink("Animation 2", destination: AnimationView2())
        NavigationLink("Animation 3", destination: AnimationView3())
        NavigationLink("Animation 4", destination: AnimationView4())
        NavigationLink("Animation 5", destination: AnimationView5())
        NavigationLink("Animation 6", destination: AnimationView6())
        
        NavigationLink("Bounce Animation", destination: BounceAnimationView())
        NavigationLink("Rotate And Color Change", destination: RotateAndColorChangeView())
        NavigationLink("Repeating Circle Animation", destination: RepeatingCircleAnimationView())
        NavigationLink("Sequential Animations", destination: SequentialAnimationsView())
        NavigationLink("Heartbeat Animation", destination: HeartbeatAnimationView())
        NavigationLink("Countdown Circle", destination: CountdownCircleView())
        NavigationLink("Card Flip", destination: CardFlipView())
        NavigationLink("Loading Bar", destination: LoadingBarView())
        NavigationLink("Color Changing Progress Ring", destination: ColorChangingProgressRingView())
      }
      .navigationTitle("Animation Demos")
    }
  }
}

#Preview {
  ContentView()
}
