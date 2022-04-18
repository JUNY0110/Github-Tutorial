//
//  TextField.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/14.
//

import SwiftUI

struct TextFieldView: View {
    @State private var name: String = ""
    
    var body: some View {
        VStack{
            TextField("What is your name?", text: $name)
                .textFieldStyle(PlainTextFieldStyle())
        Text("Hello, \(name)")
            .font(.system(size: 30, weight: .black, design: .serif))
            .foregroundColor(.blue)
        }
        .padding(.horizontal, 20)
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
