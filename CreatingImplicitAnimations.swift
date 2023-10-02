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
       // .animation(.easeOut, value: animationAmonut)
        
        //.animation(.interpolatingSpring(stiffness: 50.0, damping: 1.0), value: animationAmonut)
        
//        .animation(
//            .easeInOut(duration: 2.0)
//            .delay(1.0),
//            value: animationAmonut
        
//        .animation(
//            .easeInOut(duration: 1.0)
//            .repeatCount(3, autoreverses: true)
//            value: animationAmonut
        
        .animation(
            .easeInOut(duration: 1.0)
            .repeatForever(autoreverses: true),
            value: animationAmonut
        )
    }
}

#Preview {
    CreatingImplicitAnimations()
}
