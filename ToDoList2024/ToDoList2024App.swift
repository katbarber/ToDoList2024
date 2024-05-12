//
//  ToDoList2024App.swift
//  ToDoList2024
//
//  Created by Kat Barber on 5/11/24.
//

import SwiftUI
import SwiftData


@main
struct ToDoList2024App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
