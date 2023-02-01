//
//  ContentView.swift
//  Animations
//
//  Created by Dylan Martin on 1/18/23.
//

import SwiftUI

struct ContentView: View {
    let letters = Array("Hello SwiftUI")
    @State private var animationAmountFor3D = 0.0
    @State private var animationAmount = 1.0
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.default.delay(Double(num) / 20), value: dragAmount)
            }
                   
                 .gesture(
                    DragGesture()
                        .onChanged { dragAmount = $0.translation }
                        .onEnded { _ in
                            withAnimation(.spring()) { dragAmount = .zero
                                enabled.toggle()
                            }
                        }
                )
        }
        
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(.default, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
        
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                animationAmountFor3D += 360
            }
        }
               .padding(50)
               .background(.red)
               .foregroundColor(.white)
               .clipShape(Circle())
               .rotation3DEffect(.degrees(animationAmountFor3D), axis: (x: 0, y: 1, z: 0))
        
        VStack {
            Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
            
                .padding()
                .padding()
                .padding()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
