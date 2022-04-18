//
//  AnimalDetailView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/17.
//

import SwiftUI

struct AnimalDetailView: View {
    
    var animal: AnimalData
    
    var body: some View {

        ScrollView(showsIndicators: false){
            VStack(spacing:0){
                Image(animal.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: .infinity)
                    .cornerRadius(20)
                    .padding(.bottom, 20)
                
                VStack(alignment: .leading, spacing: 20) {
                 
                    HStack{
                        Text(animal.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)

                        Spacer()
                        
                        Button(action: {
                            print("Clicked heart")
                        }, label: {
                            Image(systemName: animal.isLike ? "heart.fill" : "heart")
                        })
                    }
                    Text(animal.headline)
                        .font(.headline)
                    
                    //Text를 모두 대문자로 표기하기 위해 uppercased()를 사용함.
                    Text("Learn more about \(animal.title)".uppercased())
                        .fontWeight(.bold)
                    
                    Text(animal.description)
                }
            }.padding(.top, 100).padding(.horizontal, 20)
        }.edgesIgnoringSafeArea(.top)
    }
}
