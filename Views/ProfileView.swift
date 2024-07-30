//
//  ProfileView.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                Button("Log Out"){
                    viewModel.logOut()
                }
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
