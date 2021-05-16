//
//  ToDoApp.swift
//  ToDo
//
//  Created by Francisco Barrios on 16/5/2564 BE.
//

import SwiftUI

@main
struct ToDoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
