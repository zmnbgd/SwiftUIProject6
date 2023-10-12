//
//  ShowingAndHidingViewsWithTransitions.swift
//  SwiftUIProject6
//
//  Created by Marko Zivanovic on 12.10.23..
//

import SwiftUI

struct ShowingAndHidingViewsWithTransitions: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
            }
        }
    }
}

#Preview {
    ShowingAndHidingViewsWithTransitions()
}
