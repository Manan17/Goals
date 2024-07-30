//
//  TodoListItemsView.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import SwiftUI
import FirebaseFirestoreSwift
struct TodoListItemsView: View {
    @StateObject var viewModel: TodoListItemsViewViewModel
    @FirestoreQuery var items:[Data]
    
    init(userId: String){
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: TodoListItemsViewViewModel(userId: userId))
    }
    var body: some View {
        NavigationView{
            VStack{
                List(items) { item in
                    ItemView(item: item)
                        .swipeActions{
                            Button("Delete"){
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To do List")
            .toolbar{
                Button{
                    viewModel.showSheet = true
                }
            label: {
                  Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showSheet){
                NewItem(showPresented: $viewModel.showSheet)
            }
        }
    }
}

#Preview {
    TodoListItemsView(userId: "O1dbvMCZW7QeSVYCIhMS71v2B283")
}
