//
//  OnAppearBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 16/3/23.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start Text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView{
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
                
            })
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
