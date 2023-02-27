//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 7/3/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("Hello. world", destination: MyOtherScreen())
                
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
            }
            .navigationTitle("All Inboxes")
            // .navigationBarTitleDisplayMode(.automatic)
            // .navigationBarHidden(true)
            .navigationBarItems(leading: HStack {
                Image(systemName: "person.fill")
                Image(systemName: "flame.fill")
            }
            , trailing: NavigationLink(destination: MyOtherScreen(), label: {
                Image(systemName: "gear")
            })
            .accentColor(.red))
        }
    }
}

struct MyOtherScreen: View {
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
               // .navigationBarHidden(true)
            
            VStack {
                Button("BACK BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click Here", destination: Text("3rd screen!"))
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
