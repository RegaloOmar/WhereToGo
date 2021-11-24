//
//  WhereToGoAppApp.swift
//  WhereToGoApp
//
//  Created by Omar Regalado on 24/11/21.
//

import SwiftUI

@main
struct WhereToGoAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
