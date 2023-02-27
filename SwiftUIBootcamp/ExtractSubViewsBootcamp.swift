//
//  ExtractSubViewsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 3/3/23.
//

import SwiftUI

struct ExtractSubViewsBootcamp: View {
    var body: some View {
        ZStack {
            Color(.blue)
                .edgesIgnoringSafeArea(.all)
            
            layerContent
        }
    }
    
    var layerContent: some View {
        HStack{
            MyItem(title: "Apples", count: 1, color: .orange)
            MyItem(title: "Oranges", count: 10, color: .green)
            MyItem(title: "Bananas'", count: 30, color: .yellow)
        }
    }
    
}

struct ExtractSubViewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
