//
//  StreamingMusicAppApp.swift
//  StreamingMusicApp
//
//  Created by Travis Brigman on 8/22/21.
//

import SwiftUI
import Firebase

@main
struct StreamingMusicAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
