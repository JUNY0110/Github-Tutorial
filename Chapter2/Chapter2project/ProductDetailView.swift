//
//  ProductDetailView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/19.
//

import SwiftUI


struct ProductDetailView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>


    
    var body: some View {
        

        VStack{
            Image("product_1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity)
                .cornerRadius(15)
            HStack{
                Text("3 flavors juice")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                
                Spacer()
            }
            
            HStack{
                Spacer()
                
                Text("Price")
                
                Spacer()
                
                Text("24,000")
                    .font(.system(size: 25, weight: .bold, design: .rounded))

            }
            HStack{
                Spacer()
                
                Text("Color      ")
                
                Spacer()
                
                Text("white") //picker
                    .font(.system(size: 25, weight: .bold, design: .rounded))

            }
            Divider()
            
            
                Button(action: {
                    print("Clicked Buy")
                }, label:{
                    ZStack{
                        Rectangle()
                            .frame(width: .infinity, height: 50)
                            .foregroundColor(.mint)
                            .cornerRadius(40)
                        Text("Buy Now")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.black)
                    }
                })
            
            HStack{
                Button(action: {
                    print("Clicked Cart")
                }, label:{
                    ZStack{
                        Rectangle()
                            .frame(width: .infinity, height: 50)
                            .foregroundColor(.white)
                            .overlay(Capsule().stroke(Color.mint, lineWidth: 5))                            .cornerRadius(40)
                        Text("Cart")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.black)
                    }
                })
                Button(action: {
                    print("Clicked Wish")
                }, label:{
                    ZStack{
                        Rectangle()
                            .frame(width: .infinity, height: 50)
                            .foregroundColor(.white)
                            .overlay(Capsule().stroke(Color.mint, lineWidth: 5))
                            .cornerRadius(40)
                        Text("Wish")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.black)
                    }
                })
                
            }

        }.padding(.horizontal, 10)
            
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            self.mode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
        })
        Spacer()

       
        .toolbar(){
            ToolbarItem(placement: .navigationBarTrailing){
                HStack(spacing: 105) {
                    
                    Text("Detail")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 20, weight: .bold, design: .rounded))

                }
            }
        }.padding(.horizontal, 10)
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
