//
//  CreateAccountView.swift
//  CollegeRepo
//
//  Created by Smit Patel on 11/08/23.
//

import SwiftUI

struct CreateAccountView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        
            ZStack {
                Color("blackx").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    
                    VStack {
                       
                        
                        Text("Sign Up")
                            .font(Montserrat.bold.font(size: 43))
                            .padding(.bottom, 30)
                            .foregroundColor(.white)
                        
                        
                        SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "apple")), text: Text("Sign in with Apple"))
                        
                        SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "google")), text: Text("Sign in with Google"))
                            .padding(.vertical)
                        
                        Text("or login with email & password")
                            .foregroundColor(Color("blue2"))
                            .font((Montserrat.medium.font(size: 16)))
                        
                        TextField("Email Address", text: $email)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            .shadow(color: Color.white.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                            .padding(.vertical)
                        
                        SecureField("Password", text: $password)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            .shadow(color: Color.white.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                            .padding(.vertical)
                        
                        Button{
                            
                        }label: {
                            PrimaryButton(title: "Create Account")
                        }
                        
                        
                        
                        
                    }
                    
                    Spacer()
                    Divider()
                    Spacer()
                    Text("You are completely safe.")
                    Text("Read our Terms & Conditions.")
                        .foregroundColor(Color("PrimaryColor"))
                    Spacer()
                    
                }
                .padding()
            }
        
    }
}

#Preview {
    CreateAccountView()
}


struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
    }
}
struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("PrimaryColor"))
            .cornerRadius(50)
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color("blue2").opacity(1),lineWidth:3).frame(width: 200,height:45))
    }
}
