//
//  Data.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import Foundation

struct Data: Codable, Identifiable{
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
    
}
