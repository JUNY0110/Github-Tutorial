//
//  NavigationBarView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/19.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack{
            Image(systemName: "line.3.horizontal")
            
            Spacer()
            
            Text("Shop")
            
            Spacer()
            
            Image(systemName: "magnifyingglass")

        }
    .padding(20)
    .font(.system(size: 30, weight: .bold, design: .rounded))
        
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
