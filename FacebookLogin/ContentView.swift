//
//  ContentView.swift
//  FacebookLogin
//
//  Created by Pedro Marques on 16/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer().frame(height: 64)
                
                VStack {
                    TextField("Email", text: $email)
                        .padding(.top, 24)
                        .padding(.bottom, 12)
                        .padding(.horizontal)
                        .keyboardType(.emailAddress)
                    
                    Divider()
                    
                    SecureField("Password", text: $password)
                        .padding(.top, 12)
                        .padding(.bottom, 24)
                        .padding(.horizontal)
                }
                .background(Color.white)
                .cornerRadius(4.0)
                
                Spacer().frame(height: 16)
                
                Button(action: {}) {
                    Text("Login")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.white)
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(Color("ButtonColor"))
                        .cornerRadius(4.0)
                }
                
                Spacer().frame(height: 64)
                
                VStack(spacing: 8) {
                    Button(action: {}) {
                        Text("Don't have an account? Sign up.")
                            .foregroundStyle(.white)
                            .bold()
                    }
                    
                    Button(action: {}) {
                        Text("Forgot your password ?")
                            .foregroundStyle(Color("TextColor"))
                    }
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
