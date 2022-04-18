//
//  ToggleView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/14.
//

import SwiftUI

struct ToggleView: View {
    
    @State private var isToggle: Bool = false
    
    
    var body: some View {
        VStack{
            Text("DARK MODE")
                .foregroundColor(.purple)
                .font(.system(size: 30, weight: .ultraLight, design: .serif))
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.purple, lineWidth: 5)
                )
            Image(isToggle ? "light_mode": "dark_mode")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 300, alignment: .center)

            HStack{
                Toggle("ON/OFF",isOn: $isToggle)
                    .labelsHidden()
                    .toggleStyle(SwitchToggleStyle(tint: .purple))
                    .padding(.horizontal)
                    
                Text(isToggle ? "ON": "OFF")
                    .font(.system(size: 20, weight: .semibold, design: .serif))
                    .foregroundColor(.purple)
            }
            
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
