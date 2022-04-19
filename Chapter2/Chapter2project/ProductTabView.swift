//
//  ProductTabView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/19.
//

import SwiftUI

struct ProductTabView: View {
    var body: some View {
        TabView{
            ProductsListView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Shop")
                        
                }
            //탭을 시각적으로 보여주는 부분에 대한 코드를 작성합니다. 일반적으로 아이콘 Image와 이름 Text가 들어갑니다.
            ProductMyCartView()
                .tabItem{
                    Image(systemName: "bag")
                    Text("Cart")
                }
        }
    }
}




struct ProductTabView_Previews: PreviewProvider {
    static var previews: some View {
        ProductTabView()
    }
}
