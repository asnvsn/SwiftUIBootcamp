//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 12/3/23.
//

import SwiftUI
struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        Picker(selection: $selection) {
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
                    
            }
        } label: {
            Text("Picker")
        }
        .pickerStyle(SegmentedPickerStyle())
        
        
        
//        Picker(selection: $selection, label:
//                HStack{
//            Text("Filter")
//            Text(selection)
//        },
//               content: {
//            ForEach(filterOptions, id: \.self) { option in
//                HStack {
//                    Text(option)
//                        Image(systemName: "heart.fill")
//                }
//                .tag(option)
//            }
//        })
//        .pickerStyle(MenuPickerStyle())
        
        //        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(selection: $selection) {
//                ForEach(18..<100) { index in
//                    Text("\(index)")
//                        .tag("\(index)")
//                }
//                .pickerStyle(WheelPickerStyle())
//            } label: {
//                Text("Picker")
//            }
//        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
