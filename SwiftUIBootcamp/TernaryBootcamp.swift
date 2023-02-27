//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 6/3/23.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState: Bool = false
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STATE!!!" : "ENDING STATE.")
                
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                        .fill(isStartingState == true ? Color.red : Color.blue)
                        .frame(width: isStartingState ? 200 : 50, height: isStartingState ? 400 : 50)

            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
