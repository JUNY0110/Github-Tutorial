//
//  IUProfile.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/13.
//

import SwiftUI

struct IUProfile: View {
    var body: some View {
        ZStack{
        Image("IU")
            .resizable()
            .aspectRatio(contentMode: .fit)
            
            EditButton()
        }
        .frame(width: 300, height: 300, alignment: .center)
        .clipShape(Circle())
    }
}
struct EditButton: View {
    var body: some View{
        VStack{
            Spacer()
            
            ZStack{
                Rectangle()
                    .fill(Color.black).opacity(0.5)
                    .frame(width: 300, height: 70, alignment: .center)
                Text("편집")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.white)
            }
        }
    }
}

struct IUProfile_Previews: PreviewProvider {
    static var previews: some View {
        IUProfile()
    }
}
