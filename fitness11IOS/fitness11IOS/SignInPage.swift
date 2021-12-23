//
//  SignInPage.swift
//  fitness11IOS
//
//  Created by Vinith kumar Tatipally on 2021-12-23.
//

import SwiftUI

struct SignInPage: View {
    @State private var email: String = ""
    @State private var password: String = ""

    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .fontWeight(.bold)
                        
                                        
                    TextField("Enter Your Email", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                    //Passwprd
                    TextField("Enter Your Password", text: $password)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                    NavigationLink(
                        destination: ForgotPassword().navigationBarHidden(true),
                        label: {
                            Text("Forgot Password?")
                                .font(.title3)
                                .fontWeight(.bold)
                                .frame(maxWidth: 300)
                                .padding()
                                .cornerRadius(200)
                                .foregroundColor(Color.black)

                            
                        })
                        .navigationBarHidden(true)
                    
                    NavigationLink(
                        destination: HomePage().navigationBarHidden(true),
                        label: {
                            Text("Login")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: 300)
                                .padding()
                                .background(Color.black)
                                .cornerRadius(200)
                        })
                        .navigationBarHidden(true)
                    
                        Text("OR")
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                            .padding(.top,20)
                        .padding(.vertical)

                    NavigationLink(
                        destination: SignUpPage().navigationBarHidden(true),
                        label: {
                            Text("Sign Up")
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

struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
        SignInPage()
    }
}



