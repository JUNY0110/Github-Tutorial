//
//  ButtonView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/14.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button(action: {
            print("Clicked Button")
            
        }){
            HStack{
                Text("Log in")
                Image(systemName: "arrow.right.circle")
                    
            }
        }
        .buttonStyle(MyButtonStyle())

    }
}


struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.system(size: 30, weight: .bold, design: .serif))
            .foregroundColor(.white)
            .padding(5)
            .background(Color.blue)
            .clipShape(Capsule())
            .overlay(Capsule().stroke(Color.blue, lineWidth: 5))
    }
}
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
