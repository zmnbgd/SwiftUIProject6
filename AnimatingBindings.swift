//
//  AnimatingBindings.swift
//  SwiftUIProject6
//
//  Created by Marko Zivanovic on 3.10.23..
//

import SwiftUI

struct AnimatingBindings: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
            
            Stepper("Scale amount", value: $animationAmount.animation(
                .easeInOut(duration: 1.0)
                .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            Spacer()
            
            Button("Tap me") {
                animationAmount += 1
            }
            .padding(58)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}

#Preview {
    AnimatingBindings()
}
