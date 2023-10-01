//
//  CreatingImplicitAnimations.swift
//  SwiftUIProject6
//
//  Created by Marko Zivanovic on 30.9.23..
//

import SwiftUI

struct CreatingImplicitAnimations: View {
    
    @State private var animationAmonut = 1.0
    
    var body: some View {
        Button("Tap me") {
            // MARK: Do something
            animationAmonut += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmonut)
        .blur(radius: (animationAmonut - 1) * 3)
        .animation(.default, value: animationAmonut)
    }
}

#Preview {
    CreatingImplicitAnimations()
}
