//
//  Chapter1.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/16.
//

import SwiftUI


struct Chapter1: View {

    @State private var isToggleBtn1: Bool = true
    @State private var isToggleBtn2: Bool = false

    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Button (action: {
                        print("Clicked Back")
                        
                    }) {
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.cyon)
                            
                    }
                    
                    Spacer()
                    Text("Profile")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.trailing, 10)

                
                    Spacer()
                }
                .padding(.horizontal, 10)
                

                VStack{
                    Image("cat1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .frame(width: 150, height: 150, alignment: .center)
                        .padding(.top,20)
                    Text("Codershigh")
                        .font(.system(size: 20, weight: .black, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.bottom, 5)

                    
                    Button(action: {
                        print("Clicked Editbtn")
                    }){
                        ZStack{
                        Rectangle()
                            .frame(width: 100, height: 20, alignment: .center)
                            .foregroundColor(.cyon)
                            .overlay(Capsule().stroke(Color.cyon, lineWidth: 10))
                        Text("Edit Profile")
                            .font(.system(size: 15, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                        }
                    }
                    
                    Text("@Apple Developer")
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.vertical, 5)
                    
                    VStack{
                        HStack{
                            Group{
                                Text(Image(systemName: "ipodshuffle.gen4"))
                                    .font(.title) +
                                Text(" coders_high_")
                                    .font(.caption)
                            }
                            .foregroundColor(.cyon)

                            
                            Spacer().frame(width: 20)
                            Group{
                                Text(Image(systemName: "play.rectangle.fill")) +
                                Text(" 스위프트하이")
                                    .font(.caption)
                            }
                            .foregroundColor(.cyon)

                        }
                        .padding(.bottom,5)
                        
                        HStack{

                            Group{
                                Text("105 ")
                                    .font(.title2)
                                    .fontWeight(.black) +
                                Text("follwers")
                                    .font(.caption)
                            }
                            .foregroundColor(.white)
                            
                            Spacer().frame(width: 20)
                            
                            Group{
                                Text("96 ")
                                    .font(.title2)
                                    .fontWeight(.black) +
                                    
                                Text("following")
                                    .font(.caption)
                            }
                            .foregroundColor(.white)
                        }
                        
                        

                    }
                    Rectangle()
                        .frame(width: 380, height: 1, alignment: .center)
                        .foregroundColor(.white)
                    

                }
                HStack{
                    Group{
                        Text(Image(systemName: "lock"))
                        Text("Private Account")
                            .fontWeight(.bold)

                    }
                    .foregroundColor(.white)

                    
                    Spacer()
                    
                    Toggle("label", isOn: $isToggleBtn1)
                        .labelsHidden()
                        .toggleStyle(SwitchToggleStyle(tint:.cyon))

                }
                .padding()
                
                HStack{
                    Group{
                        Text(Image(systemName: "bell"))
                        Text("Do not disturb")
                            .fontWeight(.bold)

                    }
                    .foregroundColor(.white)

                    
                    Spacer()
                    
                    Toggle("label", isOn: $isToggleBtn2)
                        .labelsHidden()
                        
                        .toggleStyle(SwitchToggleStyle(tint:.cyon))
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }

    }
    
}

struct Chapter1_Previews: PreviewProvider {
    static var previews: some View {
        Chapter1()
    }
}
