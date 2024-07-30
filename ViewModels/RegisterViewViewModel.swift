//
//  RegisterViewViewModel.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class RegisterViewViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var username = ""
    @Published var errorMessage = ""

    init() {
        
    }
    func register() {
        guard !username.trimmingCharacters(in: .whitespaces).isEmpty, !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            errorMessage="Please fill all fields"
            return
        }
        Auth.auth().createUser(withEmail: email, password: password){ [weak self] result, error in
            guard let user = result?.user.uid else {
                return
            }
            self?.insertUserRecord(id: user)
        }
    }
    private func insertUserRecord(id: String) {
        let newUser = User(id: id, email: email, userName: username, joinedTime: Date().timeIntervalSince1970)
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
}
