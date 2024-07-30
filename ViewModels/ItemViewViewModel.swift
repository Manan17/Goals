//
//  ItemViewViewModel.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

// Single Item
class ItemViewViewModel: ObservableObject{
    
    init() {
        
    }
    func toggleDone(item: Data){
        var newItem = item
        newItem.setDone(!item.isDone)
        guard let uid = Auth.auth().currentUser?.uid else{
            return
        }
        let db = Firestore.firestore()
        db.collection("users").document(uid).collection("todos").document(newItem.id).setData(newItem.asDictionary())
    }
}
