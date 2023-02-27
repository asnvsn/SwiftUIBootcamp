//
//  StepperBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 13/3/23.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var witdthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue )
                .padding(50)
            
            RoundedRectangle(cornerRadius:  25.0)
                .frame(width: 100 + witdthIncrement, height: 100)
            
            Stepper("Stepper 2") {
                // increment
                incrementwidth(amount: 50)
            }  onDecrement: {
                // decrement
                incrementwidth(amount: -50)
            }

        }
    }
    
    func incrementwidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            witdthIncrement += amount
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
