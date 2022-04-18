//
//  MusicFestivalView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/16.
//

import SwiftUI

struct MusicFestivalView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack(spacing:0){
                    Text("Genres + Moods")
                        .font(.system(size:30, weight: .bold, design: .rounded))
                    Spacer()
                    Text("View as list")
                        .font(.system(size:15, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                }
                
                Spacer().frame(height: 30)
                
                VStack(spacing:0){
                    HStack(spacing:0){
                        ZStack{
                            Image("Hip-Hop")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150)
                            
                            Text("Hip-Hop")
                                .font(.system(size:20, weight: .semibold, design: .rounded))
                                .foregroundColor(.yellow)
                        }
                        
                        
                        Spacer()
                        
                        ZStack{
                            Image("Pop")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150)
                            
                            Text("Pop")
                                .font(.system(size:20, weight: .semibold, design: .rounded))
                                .foregroundColor(.yellow)
                        }
                        
                    }
                    Spacer()
                    
                    HStack(spacing:0){
                        ZStack{
                            Image("RockMusic")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150)
                            
                            Text("Rock")
                                .font(.system(size:20, weight: .semibold, design: .rounded))
                                .foregroundColor(.yellow)
                        }
                        
                        
                        Spacer()
                        
                        ZStack{
                            Image("LatinMusic")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150)
                            
                            Text("Latin")
                                .font(.system(size:20, weight: .semibold, design: .rounded))
                                .foregroundColor(.yellow)
                        }
                        
                    }
                }
                
                Spacer().frame(height: 10)
                
                Text("Podcasts")
                    .font(.system(size:30, weight: .bold, design: .rounded))
                
                Spacer().frame(height: 10)
                
                VStack(alignment: .leading){
                    
                    Text("Part 1: The National Day Show")
                        .font(.system(size:25, weight: .semibold, design: .rounded))
                    
                    Spacer()
                    
                    Text("Selamat bersuti semua. Kami nyanyikan kembali lagu-lagu yang dah biasa kita dengar dalam hari kebangsaan.")
                        .font(.system(size:15, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "play.circle.fill")
                        Text("YESTERDAY - 2HR 24MIN")
                            .foregroundColor(.gray)
                        Spacer()
                        Image(systemName: "arrow.down.circle")
                    }
                    .font(.system(size:20, weight: .semibold, design: .rounded))
                }
                
                Spacer().frame(height: 30)
                
                VStack(alignment: .leading){
                    
                    Text("Part 2: The National Day Show")
                        .font(.system(size:25, weight: .semibold, design: .rounded))
                    
                    Spacer()
                    
                    Text("Selamat bersuti semua. Kami nyanyikan kembali lagu-lagu yang dah biasa kita dengar dalam hari kebangsaan.")
                        .font(.system(size:15, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "play.circle.fill")
                        Text("TODAY - 2HR 24MIN")
                            .foregroundColor(.gray)
                        Spacer()
                        Image(systemName: "arrow.down.circle")
                    }
                    .font(.system(size:20, weight: .semibold, design: .rounded))
                }
            }
        }
        .padding()
    }
}

struct MusicFestivalView_Previews: PreviewProvider {
    static var previews: some View {
        MusicFestivalView()
    }
}
