//
//  CustomizingAnimationsInSwiftUI.swift
//  SwiftUIProject6
//
//  Created by Marko Zivanovic on 2.10.23..
//

import SwiftUI

struct CustomizingAnimationsInSwiftUI: View {
    
    @State private var animationAmonut = 1.0
    
    var body: some View {
        Button("Tap me") {
            // MARK: Do something
            //animationAmonut += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
        Circle()
            .stroke(.red)
            .scaleEffect(animationAmonut)
            .opacity(2.0 - animationAmonut)
            .animation(
                .easeInOut(duration: 1.0)
                .repeatForever(autoreverses: false),
                value: animationAmonut
            )
        )
        .onAppear {
            animationAmonut = 2
        }
    }
}

#Preview {
    CustomizingAnimationsInSwiftUI()
}
