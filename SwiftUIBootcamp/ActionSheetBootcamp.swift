//
//  ActionSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 10/3/23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherpost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherpost
    }
    
    var body: some View {
        VStack{
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isOtherpost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        
                }
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            
        }
        let reportButton: ActionSheet.Button = .default(Text("Report")) {
            
        }
        
        let deleteButton: ActionSheet.Button = .default(Text("Delete")) {
            
        }
        
        let cancelButton: ActionSheet.Button = .default(Text("Cancel"))
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
        case .isOtherpost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton, cancelButton])
        case .isMyPost:
            return ActionSheet(title: Text(""), message: nil, buttons: [shareButton, reportButton, deleteButton, cancelButton])
        }
        
        
      //  return ActionSheet(title: Text("This is the title"))
        
//        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(title: Text("This is the title"), message: Text("This is the message"), buttons: [button1, button2, button3])
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
