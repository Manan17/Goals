//
//  TodoListItemsViewViewModel.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import Foundation
import FirebaseFirestore
class TodoListItemsViewViewModel: ObservableObject{
    @Published var showSheet = false
    private let userId: String
    init(userId: String) {
        self.userId = userId
    }
    func delete(id:String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
