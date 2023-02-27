//
//  IntroView.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 23/3/23.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            
            // background
            RadialGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            if currentUserSignedIn {
                ProfileView()
            } else {
                OnBoardingView()
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
