//
//  DocumentationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 16/3/23.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
    "Apples", "Oranges", "Bananas"
    ]
    @State var  showAlert: Bool = false
    
    // MARK: BODY
    

    /*
      Working copy - things to do:
     1) Fix title
     2) Fix alert
     */
    
    var body: some View {
        NavigationView{
            
            ZStack {
                Color.yellow
                    .edgesIgnoringSafeArea(.all)
        
                
                ScrollView {
                    Text("Hello")
                    ForEach(data, id: \.self) { name in
                        Text(name)
                            .font(.headline)
                    }
                }
                .navigationTitle("Documentation Bootcamp")
                .navigationBarItems(trailing:
                                        Button("ALERT", action: {
                    showAlert.toggle()
                })
                )
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the Alert")
                }
            }
        }
    }
    
    // MARK: FUNCTIONS
    
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    // MARK: PREVIEW

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
