//
//  AnimatingGestures.swift
//  SwiftUIProject6
//
//  Created by Marko Zivanovic on 7.10.23..
//

import SwiftUI

struct AnimatingGestures: View {
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { dragAmount = $0.translation }
                    .onEnded { _ in
                        withAnimation {
                            dragAmount = .zero }
                        }
            )
    }
}

#Preview {
    AnimatingGestures()
}
