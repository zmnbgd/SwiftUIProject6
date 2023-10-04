//
//  CreatingExplicitAnimations.swift
//  SwiftUIProject6
//
//  Created by Marko Zivanovic on 4.10.23..
//

import SwiftUI

struct CreatingExplicitAnimations: View {
    
    @State private var animationAmount = 0.0
    
    
    var body: some View {
        Button("Tap me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

#Preview {
    CreatingExplicitAnimations()
}
