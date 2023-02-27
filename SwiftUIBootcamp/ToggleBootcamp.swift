//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 12/3/23.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleisOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack{
                Text("Status")
                Text(toggleisOn ? "online" : "offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleisOn, label: {
                Text("Label")
            })
            .toggleStyle(SwitchToggleStyle(tint: .red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
