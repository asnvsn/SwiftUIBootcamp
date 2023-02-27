//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 24/3/23.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack{
                Text("HI")
                    
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("photo")
        )
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}
