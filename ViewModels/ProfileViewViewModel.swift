//
//  ProfileViewViewModel.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import Foundation
import FirebaseAuth
class ProfileViewViewModel: ObservableObject{
    init() {
        
    }
    func logOut() {
        do{
            try Auth.auth().signOut()
        }
        catch{
            print(error)
        }
    }
    
}
