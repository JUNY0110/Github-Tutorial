//
//  StateAndBindingView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/14.
//

import SwiftUI

struct StateAndBindingView: View {
    
    
    @State private var isPlaying: Bool = false
    
    @Environment(\.colorScheme) var colorScheme
    @State private var progress: Float = 65.0
    @State private var time: Int = 188
    @State var timer = Timer.publish (every: 1, on: .current, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            HStack{
                Image(uiImage: (UIImage(named: "music")!))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                
                Image(uiImage: (UIImage(named: colorScheme == .dark ? "music_text" : "music_text")!))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 100)
            }
            VStack{

                ProgressView("", value: progress, total: 188)
                    .progressViewStyle(LinearProgressViewStyle(tint: Color.pink))
                
                HStack{
                    Text("\(Int(progress)/60):\(String(format: "%02d", Int(progress)%60))")
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Text("\(time/60):\(String(format: "%02d", time%60))")
                        .fontWeight(.bold)
                }
            }
            .frame(width: 350)
            .padding()
            
            HStack(spacing: 50){
                Image(systemName: "backward.fill")
                
                PlayButton(isPlaying: $isPlaying)
                
                Image(systemName: "forward.fill")
            }
            .font(.system(size: 40))
        }
        
        // Mark - 콤마(,)와 %%의 차이가 무엇일까?
        // 콤마(,)는 연산자가 있는 expression이며, condition과 condition을 이어 condition-list로 만든다.
        // &&는 논리연산자(boolean)에 사용하며, expression과 결합하여 condition을 만드는 연산자이다.
        // 그렇다면 여기서는 왜 둘 다 사용이 가능할까?
        
        .onReceive(timer) { _ in
            if isPlaying && self.progress < 188 {
                self.progress += 1
            }
        }
    }
}

struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }){
            Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                .foregroundColor(.pink)
                .frame(width: 50, height: 50)
            
        }
    }
}


struct StateAndBindingView_Previews: PreviewProvider {
    static var previews: some View {
        StateAndBindingView()
    }
}
