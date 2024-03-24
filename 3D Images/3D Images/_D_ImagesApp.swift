//
//  _D_ImagesApp.swift
//  3D Images
//
//  Created by Jose Luna on 3/7/24.
//

import SwiftUI

@main
struct _D_ImagesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
