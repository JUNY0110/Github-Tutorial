//
//  ProductsListView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/19.
//

import SwiftUI

struct ProductsListView: View {
    var body: some View {
        

        ScrollView{
            NavigationBarView()

            ProductsTopBarView()
            
            VStack{
            
                VStack(alignment: .leading){
                    Text("Best Item")
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .padding(.horizontal, 10)
                    Spacer()
                    
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(productsList, id: \.self){
                                    product in
                                    
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
                                    }
                                    .padding(.horizontal, 10)

                                }
                        
                            }
                        }.padding(.bottom, 10)
               
                    }
                    
                    Text("Updated Item")
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .padding(.horizontal, 10)
                        
                    Spacer()
                    
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
    }
}
struct ProductsListView_Previews: PreviewProvider {
    static var previews: some View {

        ProductsListView()
    }
}
