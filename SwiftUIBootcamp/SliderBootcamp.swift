//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 13/3/23.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    var body: some View {
        VStack{
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
            //     "\(sliderValue)"
            )
            .foregroundColor(color)
           // Slider(value: $sliderValue)
            
          //  Slider(value: $sliderValue, in: 0...100)
            
         //   Slider(value: $sliderValue, in: 1...5, step: 1)
            
            Slider(value: $sliderValue, in: 1...5, step: 1.0, onEditingChanged: {_ in
                color = .green
            },
            minimumValueLabel: Text("1"),
            maximumValueLabel: Text("5"),
                   label: {
                Text("Title")
            })
                .accentColor(.red)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
