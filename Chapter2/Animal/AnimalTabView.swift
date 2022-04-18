//
//  AnimalTabView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/18.
//

import SwiftUI

struct AnimalTabView: View {
    var body: some View {
        TabView{
            AnimalMainView()
            
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Main")
                }
            //탭을 시각적으로 보여주는 부분에 대한 코드를 작성합니다. 일반적으로 아이콘 Image와 이름 Text가 들어갑니다.
            AnimalLikeView()
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Like")
                }
        }
    }
}

struct AnimalTabView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalTabView()
    }
}
