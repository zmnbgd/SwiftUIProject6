//
//  ControllingTheAnimationStack.swift
//  SwiftUIProject6
//
//  Created by Marko Zivanovic on 6.10.23..
//

import SwiftUI

struct ControllingTheAnimationStack: View {
    
    @State private var enabled = false
    
    var body: some View {
        Button("Tap me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(.default, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        //.animation(.default, value: enabled)
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
    }
}

#Preview {
    ControllingTheAnimationStack()
}
