//
//  PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 7/3/23.
//

// sheets
// animations
// transitions

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            
            // METHOD SHEET
            
            //            .sheet(isPresented: $showNewScreen) {
            //                NewScreen()
            
            
            // METHOD TRANSITION
            
            //            ZStack {
            //                if showNewScreen {
            //                    NewScreen(showNewScreen: $showNewScreen)
            //                        .padding(.top, 100)
            //                        .transition(.move(edge: .bottom))
            //                        .animation(.spring())
            //                }
            //            }
            //            .zIndex(2.0)
            
            // METHOD ANIMATION OFFSET
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}


struct NewScreen: View {
    
    @Environment (\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            Button {
                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
        //        NewScreen()
    }
}
