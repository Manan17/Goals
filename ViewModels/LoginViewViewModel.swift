//
//  LoginViewViewModel.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import Foundation
import FirebaseAuth
class LoginViewViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    init() {
        
    }
    func login() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            errorMessage="Please fill all fields"
            return
        }
        Auth.auth().signIn(withEmail: email, password: password)
    }
}
