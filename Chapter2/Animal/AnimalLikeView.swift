//
//  AnimalLikeView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/18.
//

import SwiftUI

struct AnimalLikeView: View {
    
    var animals: [AnimalData] = animalsData
    
    var body: some View {
        NavigationView{
            List(animals.filter{$0.isLike == true}){animal in
                HStack{
                    AnimalListView(animal: animal)
                    
                    Spacer()
                    
                    Button(action: {
                        print("Clicked heart")
                    }, label: {
                        Image(systemName: animal.isLike ? "heart.fill":"heart")
                    })
                }
            }
            .navigationTitle("Like Animals")
        }
    }
}

struct AnimalLikeView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalLikeView()
    }
}
