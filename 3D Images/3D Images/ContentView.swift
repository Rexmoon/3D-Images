//
//  ContentView.swift
//  3D Images
//
//  Created by Jose Luna on 3/7/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State private var angle: Angle = .degrees(0)
    
    var body: some View {
        VStack {
            Model3D(named: "Scene") { model in
                model
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(0.5)
                    .rotationEffect(angle)
                    .rotation3DEffect(angle, axis: (0, 1, 0))
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                angle = .degrees(value.location3D.z)
                            }
                    )
            } placeholder: {
                ProgressView()
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
