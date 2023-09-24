//
//  login_View.swift
//  login
//
//  Created by malindu pabasara on 2023-09-17.
//

import SwiftUI

struct login_View: View {
    
    @State private var username = ""
            @State private var password = ""
            @State private var showAlert = false
            @State private var showPasswordReset = false
            
            
            // Example login validation function
                func isValidLogin() -> Bool {
                    // Add your own logic to validate the login here
                    return username == "your_username" && password == "your_password"
                }
    var body: some View {
        
        
            
        NavigationView
                   {
            ZStack{
                
                // Create a gradient background
                RadialGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), center: .center, startRadius: 0, endRadius: 300)
                                .edgesIgnoringSafeArea(.all)
 // Extend the gradient to the edges
            
                //Image("UI")
                //    .resizable()
                 //   .scaledToFill()
                   // .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
           
                       VStack
                       {
                        Image("Test")
                                //       .resizable()
                                           //  .aspectRatio(contentMode: .fit)
                                             .frame(width: 140, height: 140)
                                    //         .padding()
                                
                        
                                 Text("Sign In")
                                              .font(.largeTitle)
                                              .bold()
                                              .italic()
                                              .padding(.vertical)
                                            //.background(Color.blue)
                                         //     .frame(maxWidth:.infinity,alignment: .leading)
                                          
                                  
                           TextField("Username", text: $username)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .padding(.horizontal)
                                            .padding(.bottom, 5)
                           
                                        SecureField("Password", text: $password)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                           .padding(.horizontal)
                                           .padding(.bottom, 12)
                                       
                           Button(action: {
                                           // Add your login logic here
                                           if isValidLogin() {
                                               // Navigate to the next screen or perform the desired action
                                           } else {
                                               showAlert = true
                                           }
                                       }) {
                                           Text("Login")
                                               .font(.headline)
                                               .foregroundColor(.white)
                                               .padding()
                                               .frame(maxWidth: .infinity)
                                               .background(Color.black)
                                               .cornerRadius(10
                                               )
                                       }
                                       .alert(isPresented: $showAlert) {
                                           Alert(title: Text("Invalid Login"), message: Text("Please check your username and password and try again."), dismissButton: .default(Text("OK")))
                                       }
                           
                           
                         NavigationLink(
                           destination: createAccount_View(),
                           label: {
                              
                           
                                              Text("Create Account")
                                                  .font(.headline)
                                                  .foregroundColor(.black) // You can customize the color
                                                  .padding()
                                                  .frame(maxWidth: .infinity)
                                          
                           } )
                           
                           NavigationLink(
                               destination:forgotPassword_View(),
                               label:{
                                                Text("Forgot Password?")
                                                    .foregroundColor(.black)
                                                //    .padding()
                           })
                                
                                        
                                        Spacer()
                    
                       }
                       
       
                       .padding()
                       
            }
            .navigationBarTitle("",displayMode: .inline)
                .navigationBarHidden(true)
                       .background(Color.green.opacity(0.7))
            
                    
                   }
        
        //Image("UI")
        
    }


struct login_View_Previews: PreviewProvider {
    static var previews: some View {
        login_View()
    }
}
}
