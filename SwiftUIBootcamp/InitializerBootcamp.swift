//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 27/2/23.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else
        {
            self.title = "Orange"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
        
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(count: 25, fruit: .orange)
            InitializerBootcamp(count: 50, fruit: .apple)
        }
    }
}
