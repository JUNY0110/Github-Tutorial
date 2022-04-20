//
//  NavigationView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/17.
//

import SwiftUI

struct NavigationMainView: View {
    var body: some View {

        NavigationView{
            List(0 ..< 5){num in
                NavigationLink(destination: NavigationDetailView(num: num)){
                    Text("List\(num+1)")
                }
            }
            .navigationBarTitle("Animal")
        }
        
    }
}
struct NavigationDetailView: View {
    
    var num: Int
    
    var body: some View {
        Text("This is List \(num+1)")
    }
}

struct NavigationViewApp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationMainView()
    }
}
