//
//  TextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 10/3/23.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView{
            VStack{
                TextField("Type something here...", text: $textFieldText)
                // .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(.red)
                    .cornerRadius(10)
                    .font(.headline)
                
                
                
                Button {
                    if textisAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textisAppropriate() ? Color.yellow : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(!textisAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextFied Bootcamp!")
        }
    }
    
    func textisAppropriate() -> Bool {
        // check Text
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

        

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
