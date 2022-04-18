//
//  ForEachView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/16.
//

import SwiftUI

struct ForEachView: View {
    
    let imageList = ["airplayvideo", "airplayaudio", "airpods", "airpodspro", "applelogo"]
    
    var body: some View {
        //범위지정 ForeEach문 : ForEach( 0 ..< imageList.count){}
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                ForEach(0 ..< imageList.count){ index in
                    Image(systemName: imageList[index])
                        .padding(30)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
            }
        }
        //범위지정하지않은 ForeEach문 : ForEach(imageList, id: \.self)
        //.self는 배열 안에 있는 각각의 고유한 요소들을 식별할 수 있게 하기 위해 필요하다.
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                ForEach(imageList, id: \.self){ index in
                    Image(systemName: index)
                        .padding(30)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
            }
        }
        //index in 대신 $0 사용 가능.
        //$0은 배열의 첫번째 요소를 뜻함. ForEach가 반복될 때마다 첫번째 요소를 가져오므로 배열의 요소를 차례로 가져오게 된다.
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                ForEach(imageList, id: \.self){
                    Image(systemName: $0)
                        .padding(30)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
            }
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
