//
//  ProductsUpdatedLiestView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/19.
//

import SwiftUI

struct ProductsUpdatedListView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Updated Item")
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .padding(.horizontal, 10)
                
            
            ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(productsList, id: \.self){
                            product in
                            NavigationLink(destination: ProductDetailView()){

                                VStack{
                                    Image(product.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 200, height: 200)
                                        .cornerRadius(15)
                                    
                                    VStack(alignment: .leading){

                                        Text(product.num)
                                            .font(.system(size: 20))
                                            
                                        Divider()

                                        Text(product.name)
                                        
                                        Text(product.price)
                                            .font(.system(size: 30, weight: .bold))
                                    }
                                    .foregroundColor(.black)
                                }
                                .padding(.horizontal, 10)
                            }
                        }
                    }
            }    
        }
    }
}

struct ProductsUpdatedListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsUpdatedListView()
    }
}
