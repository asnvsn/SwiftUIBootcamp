//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 2/3/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView{
            VStack{
                Text("Titles goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 100)
                        .padding()
                    
                }
            }
            
        }
        .background(.yellow)
        
    }
    
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
