//
//  ContentView.swift
//  ToDoList2024
//
//  Created by Kat Barber on 5/11/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            HStack {
                
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button {
                    withAnimation {
                        self.showNewTask = true
                    }

                } label: {
                    Text("+")
                        .font(.system(size: 40))

                }
            }
            .padding()
            List {
                ForEach (toDos) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                    }
                .onDelete(perform: deleteToDo)
            }
            .listStyle(.plain)
            

        }
        Spacer()
        if showNewTask {
            NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false), showNewTask: $showNewTask)
        }
    }
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets {
            let toDoItem = toDos[offset]
            modelContext.delete(toDoItem)
        }
    }
}

#Preview {
    ContentView()
}
