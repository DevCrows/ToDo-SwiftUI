//
//  ToDoApp.swift
//  ToDo
//
//  Created by Francisco Barrios on 16/5/2564 BE.
//

import SwiftUI

@main
struct ToDoApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            LandmarkList().environmentObject(ModelData())
        }
    }
}
