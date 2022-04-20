//
//  ProductMyCartView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/19.
//

import SwiftUI




struct ProductMyCartView: View {

    @State var num: Int = 1
    
    
    @State var productAmount: Int = 1
    var body: some View {

        ScrollView{
            NavigationBarView()

            ProductsTopBarView()
            VStack{
                
                Text("My cart")
                    .font(.system(size: 30, weight: .black))
                
                ForEach(productsList, id: \.self){product in
                    HStack{
                    
                        Image(product.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .cornerRadius(15)
                            
                            
                        
                        VStack(alignment: .leading){
                            
                            HStack{
                                Text(product.name)
                                    .font(.system(size: 20, weight: .black))
                            }
                            
                            Text(product.style)
                                .font(.caption)
                                .padding(.bottom, 7)

                        
                            HStack{

                                Text(product.price)
                                    .fontWeight(.black)
                                
                                Spacer()
                                
                                Button(action: {
                                    Text("\(num-1)")
                                }, label: {
                                    Image(systemName: "minus")
                                })
                                .foregroundColor(.mint)
                                    
                                ZStack{
                                    Rectangle()
                                        .frame(width:20, height: 20)
                                        .foregroundColor(.white)
                                        .overlay(Rectangle().stroke(Color.cyon, lineWidth: 1))
                                    
                                    Text("\(num)")
                                    
                                }
                                    
                                Button(action: {
                                    Text("\(num+1)")
                                }, label: {
                                    Image(systemName: "plus")
                                })
                                .foregroundColor(.mint)

                            }
                            .font(.system(size: 22))
                        }
                        
                        .padding(.leading, 10)
                        
                    }

                }
                Divider()
                
                HStack{
                    Text("Total")
                    Spacer()
                    Text("1,043,900")
                }.font(.system(size: 30, weight: .black))
                

                ZStack{
                    Rectangle()
                        .frame(width: .infinity, height: 50)
                        .cornerRadius(40)
                        .foregroundColor(.mint)
                    Text("Buy Now")
                        .font(.system(size: 20, weight: .bold))
                }
            }
            .padding(.horizontal, 20)

        }

    }
}




struct ProductMyCartView_Previews: PreviewProvider {
    static var previews: some View {
        ProductMyCartView()
    }
}
