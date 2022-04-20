//
//  ProductTabView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/19.
//

import SwiftUI

struct ProductTabView: View {
    var body: some View {
                

            
        NavigationView{
            TabView{
                    
                ProductsListView()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Shop")
                            
                    }
                    .navigationBarHidden(true)
                ProductMyCartView()
                    .tabItem{
                        Image(systemName: "bag")
                        Text("Cart")
                        
        
                    }
                    .navigationBarHidden(true)
            
            }
        }
        
    }
}




struct ProductTabView_Previews: PreviewProvider {
    static var previews: some View {
        ProductTabView()
    }
}
