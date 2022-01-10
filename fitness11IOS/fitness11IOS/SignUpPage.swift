//
//  SignUpPage.swift
//  fitness11IOS
//
//  Created by Vinith kumar Tatipally on 2021-12-23.
//

import SwiftUI
import Firebase

struct SignUpPage: View {
    @State private var firstname: String = ""
    @State private var Lastname: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State var showLoginpage: Bool = false
    
    var body: some View {
        ZStack {
            NavigationLink( destination:HomePage(),isActive: $showLoginpage, label: {EmptyView() })
            Color("BGColor").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                
                VStack {
                    Text("Sign UP")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .fontWeight(.bold)
                        .padding(.bottom, 60)
                                        
                    //Name
                    TextField("Enter Your FirstName", text: $firstname)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                        
                    //Number
                    TextField("Enter Your LastName", text: $Lastname)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                    //Email
                    TextField("Enter Your Email", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                    //Passwprd
                    SecureField("Enter Your Password", text: $password)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                        .padding(.vertical)
                    
                    
                    Button {
                       createNewAccount()
                    } label: {
                        Text("Register")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: 300)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(200)
                    }
                    
                }
                
                Spacer()
                Spacer()
                
            }
            .padding()
        }
    }
    @State var loginStatusMessage = ""
private func createNewAccount(){
    Auth.auth().createUser(withEmail: email, password: password){ result,err in
        if let err = err{
            print("Failed to create user:",err)
            self.loginStatusMessage = "Failed to craate user: \(err)"
            return
        }
        self.showLoginpage = true;
        print("Successfully created in as a user: \(result?.user.uid ?? "")")
        self.loginStatusMessage = "Successfully created in as a user: \(result?.user.uid ?? "")"
        
    }
}
}


struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage()
    }
}
