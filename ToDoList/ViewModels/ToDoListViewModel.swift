//
//  ToDoListViewModel.swift
//  ToDoList
//
//  Created by Andres Fabian Rangel Marino on 2/11/23.
//

import Foundation
import FirebaseFirestore

class ToDoListViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let database = Firestore.firestore()
        database.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
    
}
