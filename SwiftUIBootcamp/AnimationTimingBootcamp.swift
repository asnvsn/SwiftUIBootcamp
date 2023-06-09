//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 6/3/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(response: 3.0, dampingFraction: 0.7, blendDuration: 1.0))
//                .animation(Animation.linear(duration: timing))
            
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
