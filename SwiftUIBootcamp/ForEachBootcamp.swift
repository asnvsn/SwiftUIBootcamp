//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 27/2/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            HStack{
                ForEach(0..<10) { index in
                    Circle()
                        .frame(width: 30, height: 30)
                }
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
