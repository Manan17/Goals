//
//  ItemView.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import SwiftUI

struct ItemView: View {
    let item: Data
    @StateObject var viewModel = ItemViewViewModel()
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(item.title)
                    .font(.title2)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            Button{
                viewModel.toggleDone(item: item)
            } label:{
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            }
        }
    }
}

#Preview {
    ItemView(item: .init(
        id:"123",
        title:"Get Milk",
        dueDate: Date().timeIntervalSince1970,
        createdDate: Date().timeIntervalSince1970,
        isDone: false
    ))
}
