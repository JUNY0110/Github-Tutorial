//
//  PickerView.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/15.
//

import SwiftUI

struct PickerView: View {

    @State private var selectedFlaver = Flavor.Chocolate
    
    var body: some View {
        
        VStack{
            Menu{
            Picker(selection: $selectedFlaver, label: EmptyView()){
                Text("Chocolate").tag(Flavor.Chocolate)
                Text("Vanilla").tag(Flavor.Vanilla)
                Text("Strawberry").tag(Flavor.Strawberry)
                Text("MintChocolate").tag(Flavor.MintChocolate)
            }
            .pickerStyle(.automatic)
            } label: {
                HStack{
                    Text(selectedFlaver.rawValue)
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    Image(systemName: "chevron.down")
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                }
                .foregroundColor(.black)
                .padding(.horizontal)
            }

//            Text("선택한 맛: \(selectedFlaver.rawValue)")
//                .font(.largeTitle)
//                .foregroundColor(.purple)
            NavigationView{
                Form{
                    Section{
                        Picker("Flavor", selection: $selectedFlaver){ Text("Chocolate").tag(Flavor.Chocolate)
                            Text("Vanilla").tag(Flavor.Vanilla)
                            Text("Strawberry").tag(Flavor.Strawberry)
                            Text("MintChocolate").tag(Flavor.MintChocolate)
                        }
                    }
                }
            }
        }
    }
}
enum Flavor: String {
    case Chocolate
    case Vanilla
    case Strawberry
    case MintChocolate
    
}


struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
