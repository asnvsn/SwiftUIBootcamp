//
//  ScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 28/2/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView{
            VStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 20)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}


struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
