//
//  ProductMyCartView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/19.
//

import SwiftUI




struct ProductMyCartView: View {


    var body: some View {

        ScrollView{
            VStack{
                Text("My cart")
                    .font(.system(size: 30, weight: .black))
                
                ForEach(productsList, id: \.self){product in
                    HStack{
                    
                        Image(product.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .cornerRadius(15)
                        
                        VStack{
                            HStack{
                                Text(product.name)
                                    .font(.system(size: 20, weight: .black))
                                Spacer()
                            }
                            .padding(.bottom)
                            
                            HStack{
                            
                                Text(product.price)
                                    .font(.system(size: 25, weight: .black))
                                
                                Spacer()
                                
                                Text("fewa")
                            }
                            
                        }
                        
                        .padding(.leading, 10)
                    }

                }
                Divider()
                
                HStack{
                    Text("Total")
                    Spacer()
                    Text("115,000")
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
