//
//  ContentView.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//
import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentId.isEmpty{
            TabView{
                TodoListItemsView(userId: viewModel.currentId)
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                    }
            }

        }
        else {
            LoginView()
        }
        
    }
}

#Preview {
    MainView()
}
