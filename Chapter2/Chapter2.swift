//
//  Chapter2.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/18.
//

import SwiftUI

struct ProductsList: Identifiable, Hashable {
    let id = UUID()
    let image: String
    let num: String
    let name: String
    let price: String
}

let productsList = [
    ProductsList(image: "product_1", num: "01", name: "3 favors juice", price: "24,000"),
    ProductsList(image: "product_2", num: "02", name: "camera", price: "99,900"),
    ProductsList(image: "product_3", num: "03", name: "3 tissue", price: "5,000"),
    ProductsList(image: "product_4", num: "04", name: "5 colors bottle", price: "15,000"),
    ProductsList(image: "product_5", num: "05", name: "iphone13 red", price: "900,000")
]

struct Chapter2: View {

    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "line.3.horizontal")
                    
                    Spacer()
                    
                    Text("Shop")
                    
                    Spacer()
                    
                    Image(systemName: "magnifyingglass")

                }
            .padding(20)
            .font(.system(size: 30, weight: .bold, design: .rounded))
                
                ZStack{
                    Rectangle()
                        .background(.gray)
                        .frame(width: .infinity, height: 50)

                    
                    HStack{
                        Button(action: {
                            print("Clicked All")
                        }, label: {
                            Text("All")

                        })
                        Spacer()
                        Button(action: {
                            print("Clicked Shirts")
                        }, label: {
                            Text("Shirts")

                        })
                        Spacer()
                        Button(action: {
                            print("Clicked Pants")
                        }, label: {
                            Text("Pants")

                        })
                        Spacer()
                        Button(action: {
                            print("Clicked Skirts")
                        }, label: {
                            Text("Skirts")

                        })
                        Spacer()
                        Button(action: {
                            print("Clicked Outer")
                        }, label: {
                            Text("Outer")

                        })
                    }
                    .foregroundColor(.white)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .padding(.horizontal, 20)
                }
                
                
                Text("Best Item")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .padding(.horizontal, 10)

                
                
                VStack(alignment: .leading){
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
                    }.padding(.bottom, 30)
                
                Text("Updated Item")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .padding(.horizontal, 10)
                    
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
                    }.padding(.bottom, 30)
           
                }
        
            }

        }
    }
}


struct Chapter2_Previews: PreviewProvider {
    static var previews: some View {
        Chapter2()
    
                 
    }
}
                 
