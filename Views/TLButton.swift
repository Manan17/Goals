//
//  TLButton.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let color: Color
    let action: () -> Void
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(color)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        })
        .padding()
    }
}

#Preview {
    TLButton(title: "Hello", color: .green){
        
    }
}

