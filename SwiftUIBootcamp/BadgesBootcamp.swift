//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 25/3/23.
//

import SwiftUI

// List
// TabView

struct BadgesBootcamp: View {
    var body: some View {
        
        List{
            Text("Hello, world")
                .badge(5)
            Text("Hello, world")
                .badge("NEW ITEMS!!!")
            Text("Hello, world")
            Text("Hello, world")
            Text("Hello, world")
        }
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(5)
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(4)
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(99)
//        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
