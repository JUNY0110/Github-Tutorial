//
//  Spacer().swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/16.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        HStack{
            Text("Genres + Moods")
                .font(.system(size: 30, weight: .bold, design: .serif))
            
            Spacer().frame(width:30)
            
            Text("View as list")
                .font(.system(size: 15, weight: .semibold, design: .serif))
                .foregroundColor(.gray)
            Spacer()
        }
    }
}

struct Spacer___Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
