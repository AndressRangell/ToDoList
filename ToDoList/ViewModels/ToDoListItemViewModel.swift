//
//  ToDoListItemViewModel.swift
//  ToDoList
//
//  Created by Andres Fabian Rangel Marino on 2/11/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class ToDoListItemViewModel: ObservableObject {
    init() {
        
    }
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }
        let database = Firestore.firestore()
        database.collection("users")
            .document(userId)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
