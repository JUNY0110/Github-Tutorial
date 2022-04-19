//
//  Chapter2.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/18.
//

import SwiftUI

struct Chapter2: View {
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                    
                NavigationBarView()
                
                ProductsTopBarView()
                
                ProductsListView()
                
                ProductTabView()
            }
//NavigationView의 상단 empty space를 제거하는 코드

            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}
//
//
//
struct Chapter2_Previews: PreviewProvider {
    static var previews: some View {
        Chapter2()
    }
}
                 
