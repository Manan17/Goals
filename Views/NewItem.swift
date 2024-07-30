//
//  NewItem.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import SwiftUI

struct NewItem: View {
    @StateObject var viewModel = NewItemViewModel()
    @Binding var showPresented: Bool
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
            Form{
                TextField("Enter title ", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                DatePicker("Due Date", selection: $viewModel.date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                TLButton(title: "Save", color: .pink){
                    viewModel.save()
                    showPresented = false
                }
                .padding()
            }
        }
        .padding(.top, 100)
    }
}

#Preview {
    NewItem(showPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
