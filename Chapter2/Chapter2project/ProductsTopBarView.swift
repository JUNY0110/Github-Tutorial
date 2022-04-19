//
//  ProductsTopBarView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/19.
//

import SwiftUI

struct ProductsTopBarView: View {
    var body: some View {
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
    }
}

struct ProductsTopBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsTopBarView()
    }
}
