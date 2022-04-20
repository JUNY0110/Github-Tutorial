//
//  Test2.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/20.
//

import SwiftUI

struct Test1: View {
    var body: some View {
        NavigationView {
            Text("Test 1")
                .navigationBarTitle("Dashboard")
                .navigationBarItems(trailing:
                    HStack {
                        Button(action: {
                            // more code here
                        }) {
                            Image(systemName: "arrow.clockwise")
                                .font(.title)
                        }
                        Button(action: {
                            // more code here
                        }) {
                            Image(systemName: "slider.horizontal.3")
                                .font(.title)
                        }
                    }
                )
        }
    }
}
struct Test2: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Test1()) {
                Text("Test 1")
            }
            .navigationBarTitle("Orders")
        }
    }
}

struct Test3: View {
    var body: some View {
        TabView {
            Test1()
               .tabItem {
                   Image(systemName: "gauge")
                   Text("Dashboard")
               }
            Test2()
               .tabItem {
                   Image(systemName: "list.dash")
                   Text("Orders")
               }
        }
    }
}
struct Test2_Previews: PreviewProvider {
    static var previews: some View {
        Test3()
    }
}
