//
//  ListView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/16.
//

import SwiftUI

struct StaticListView: View {
    
    var body: some View {
        List{
            HStack{
                Text("Sunny")
                Spacer()
                Image(systemName: "sun.max")
                    .foregroundColor(.green)
                
            }.padding()
            
            HStack{
                Text("Rainy")
                Spacer()
                Image(systemName:"cloud.rain")
            }.padding().foregroundColor(.red)
            
            HStack{
                Text("Cloudy")
                Spacer()
                Image(systemName:"smoke")
                    .foregroundColor(.green)
            }.padding()
            
            HStack{
                Text("Windy")
                Spacer()
                Image(systemName: "wind")
                    .foregroundColor(.green)

            }.padding()
            HStack{
                Text("Snowy")
                Spacer()
                Image(systemName: "snow")
                    .foregroundColor(.green)
            }.padding()
        }.font(.system(size: 25, weight: .bold, design: .rounded))
    }
}

struct DynamicListView: View {
    var body: some View{
        List(playlists) { list in
            CardView(list: list)
            
        }
        .listStyle(SidebarListStyle())
    }
}

struct CardView: View {

    var list: PlayList
    
    var body: some View{
        VStack(spacing: 0){
            Image(list.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 100)
            
            VStack(alignment: .leading){
                HStack{
                    Text(list.title)
                        .bold()
                        .lineLimit(1)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
            
                Text(list.name)
                    .font(.caption)
                
                HStack{
                    ProgressView(value: list.percent, total: 1.0)
                        .progressViewStyle(LinearProgressViewStyle(tint: Color.yellow))
                        .frame(height: 10)
                    Text("\(Int(list.percent * 100))%")
                        .font(.caption)
                }
            }
            .padding()
        }
        .padding()
        .background(Color.black)
        .foregroundColor(.white)
        .cornerRadius(15)
    }
}

let playlists = [
    PlayList(title: "간단한 게임으로 코딩 시작해보기", name: "스위프트 하이", percent: 0.2, imageName: "dl_1"),
    PlayList(title: "포탈타고 순간이동을 해보자", name: "스위프트 하이", percent: 0.4, imageName: "dl_2"),
    PlayList(title: "숨은 버그 찾기", name: "스위프트 하이", percent: 0.5, imageName: "dl_3"),
    PlayList(title: "함수란 신발끈 묶기다?", name: "스위프트 하이", percent: 0.1, imageName: "dl_4")
]

struct PlayList: Identifiable {
    //identifiable : 배열된 요소들이 식별되도록 하기 위해 사용. 식별되는 ID를 가진다는 의미.
    let id = UUID() //식별하는 데 사용할 수 있는 보편적인 고유한 값을 만들어준다.
    let title: String
    let name: String
    let percent: Double
    let imageName: String
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        StaticListView()
        DynamicListView()
    }
}
