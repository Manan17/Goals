//
//  HeaderView.swift
//  ToDoApp
//
//  Created by Manan Shah on 26/07/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
                
            VStack{
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .bold()
                Text(subtitle)
                    .foregroundColor(.white)
                    .font(.system(size: 25))
            }
            .padding(.top, 100)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y:-150)
    }
}

#Preview {
    HeaderView(title: "LESSOGE", subtitle: "hello", angle: 15, background: .pink)
}
