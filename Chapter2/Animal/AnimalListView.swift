//
//  AnimalListView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/17.
//

import SwiftUI

struct AnimalListView: View {
    
    var animal: AnimalData
    
    var body: some View {
        HStack{
            Image(animal.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80, alignment: .center)
                .cornerRadius(15)
            VStack(alignment: .leading, spacing: 5){
    
                Text(animal.title)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(animal.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                    .lineLimit(2)
            }
        }.padding(.vertical, 4)
    }
}
struct AnimalListView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalMainView()
    }
}
