//
//  NewItemViewModel.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
class NewItemViewModel: ObservableObject{
    @Published var title = ""
    @Published var date = Date()
    
    init() {
        
    }
    func save() {
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let uuid = UUID().uuidString
        let item = Data(id: uuid, title: title, dueDate: date.timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false)
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(uuid)
            .setData(item.asDictionary())
    }
}
