//
//  RegisterView.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack{
            HeaderView(title: "Let's start", subtitle: "Start your journey with us", angle: -15, background: .orange)
            Form{
                TextField("Username", text: $viewModel.username)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                TLButton(title: "Create Account", color: .green){
                    viewModel.register()
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
