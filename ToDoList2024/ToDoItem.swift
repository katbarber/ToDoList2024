//
//  ToDoItem.swift
//  ToDoList2024
//
//  Created by Kat Barber on 5/11/24.
//

import Foundation
import SwiftData

@Model
class ToDoItem {
    var title: String
    var isImportant: Bool
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
    
}
