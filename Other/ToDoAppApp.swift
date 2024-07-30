//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import SwiftUI
import FirebaseCore
@main
struct ToDoAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
