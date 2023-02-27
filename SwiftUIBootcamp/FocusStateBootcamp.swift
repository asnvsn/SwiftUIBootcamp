//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Санжар Асанов on 27/3/23.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardintFields: Hashable {
        case username
        case password
    }
    
  //  @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
 //   @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardintFields?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
           //     .focused($usernameInFocus)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
            //    .focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP 💣") {
                let usernameIsValid = !username.isEmpty
                let passwordsValid = !password.isEmpty
                if usernameIsValid && passwordsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                   usernameInFocus = false
//                   passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                   usernameInFocus = true
//                  passwordInFocus = false
                }
            }
            
            //            Button("TOGGLE FOCUS STATE") {
            //                usernameInFocus.toggle()
            //            }
        }
        .padding(40)
        //        .onAppear{
        //            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
        //                self.usernameInFocus = true
        //            }
        //        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
