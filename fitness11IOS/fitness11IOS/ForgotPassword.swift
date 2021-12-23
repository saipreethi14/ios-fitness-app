//
//  ForgotPassword.swift
//  FitnessApp
//
//  Created by Vinith kumar Tatipally on 2021-12-22.
//

import SwiftUI

struct ForgotPassword: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color("BGColor").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                
                VStack {
                    Text("Forgot Password")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .fontWeight(.bold)
                                        
                    TextField("Enter your MailID", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                    TextField("New Password", text: $password)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                    //Passwprd
                    TextField("Re-Type Password", text: $password)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                        .padding(.bottom)
                    
                    NavigationLink(
                        destination: HomePage().navigationBarHidden(true),
                        label: {
                            Text("Submit")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: 300)
                                .padding()
                                .background(Color.black)
                                .cornerRadius(200)
                        })
                        .navigationBarHidden(true)
                    
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}
