//
//  AnimalMainView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/17.
//

import SwiftUI

struct AnimalMainView: View {
    
    var animals: [AnimalData] = animalsData
    
    var body: some View {
        NavigationView{
            List(animals){ animal in
                NavigationLink(destination: AnimalDetailView(animal:animal)){
                    AnimalListView(animal:animal)
                }
            }
            .navigationBarTitle("Animals")
        }
    }
}

struct AnimalMainView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalMainView()
    }
}
