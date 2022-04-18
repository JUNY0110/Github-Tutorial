//
//  ScrollView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/17.
//

import SwiftUI

struct HScrollView: View {
    
    let imageList = ["sv_1", "sv_2", "sv_3", "sv_4", "sv_1", "sv_2", "sv_3", "sv_4"]
    let textList = ["내 스토리", "Tanny", "Key", "Lizzy", "Jerry", "Dinner", "Digi", "Lawn"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 30){
                ForEach(0 ..< imageList.count){ index in
                    VStack(spacing: 0){
                        Image(imageList[index])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(width: 100, height: 100)
                            .padding(15)
                            .overlay(Circle().stroke(Color.yellow, lineWidth: 7))
                        
                        Text(textList[index])
                            .font(.title3)
                            .bold()
                            .padding(20)
                        
                    }
                }
            }.padding()
        }
        
        //복잡한 데이터를 다룰 때에는 구조체를 사용하는 것이 좋다.
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 30){
                ForEach(profilelists, id: \.self){ profile in
                    VStack(spacing: 0){
                        Image(profile.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(width: 100, height: 100)
                            .padding(15)
                            .overlay(Circle().stroke(Color.yellow, lineWidth: 7))
                        
                        Text(profile.name)
                            .font(.title3)
                            .bold()
                            .padding(20)
                        
                    }
                }
            }.padding()
        }
    }
}



struct ProfileList: Identifiable, Hashable {
    let id = UUID()
    let image: String
    let name: String
}

let profilelists = [
    ProfileList(image: "sv_1", name: "내 스토리"),
    ProfileList(image: "sv_2", name: "Tanny"),
    ProfileList(image: "sv_3", name: "Key"),
    ProfileList(image: "sv_4", name: "Lizzy"),
    ProfileList(image: "sv_1", name: "Jerry"),
    ProfileList(image: "sv_2", name: "Dinner"),
    ProfileList(image: "sv_3", name: "Digi"),
    ProfileList(image: "sv_4", name: "Lawn")
]

struct HScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HScrollView()
    }
}
