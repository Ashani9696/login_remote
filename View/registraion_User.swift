//
//  registraion_User.swift
//  login
//
//  Created by malindu pabasara on 2023-09-25.
//

import SwiftUI

struct registraion_User: View {
    @State private var name = ""
            @State private var email = ""
    @State private var seldate = Date()
    @State private var m_income = ""
    @State private var mobile = ""
    @State private var pw = ""
    @State private var cpw = ""
    
    var body: some View {
        VStack{
            Text("Register Now")
                         .font(.largeTitle)
                         .bold()
                         .italic()
                         .padding(.vertical)
            
            TextField("Name", text: $name)
                             .textFieldStyle(RoundedBorderTextFieldStyle())
                             .padding(.horizontal)
                             .padding(.bottom, 5)
            
            TextField("Email", text: $email)
                             .textFieldStyle(RoundedBorderTextFieldStyle())
                             .padding(.horizontal)
                             .padding(.bottom, 5)
            
            DatePicker(" Date",selection: $seldate, displayedComponents:[.date])
                .datePickerStyle(CompactDatePickerStyle())
                .labelsHidden()
                .padding(.horizontal)
            
            TextField("Monthly Income", text: $m_income)
                             .textFieldStyle(RoundedBorderTextFieldStyle())
                             .padding(.horizontal)
                             .padding(.bottom, 5)
            
            TextField("Mobile Number", text: $mobile)
                             .textFieldStyle(RoundedBorderTextFieldStyle())
                             .padding(.horizontal)
                             .padding(.bottom, 5)
            
            TextField("Password", text: $pw)
                             .textFieldStyle(RoundedBorderTextFieldStyle())
                             .padding(.horizontal)
                             .padding(.bottom, 5)
            
            TextField("Confirm Password", text: $cpw)
                             .textFieldStyle(RoundedBorderTextFieldStyle())
                             .padding(.horizontal)
                             .padding(.bottom, 5)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Register now")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(UIColor(named: "p")!))
                    .frame(maxWidth: .infinity)
                    //.offset(y:25)
                
                    
                
            })
            
            
            
        }
    }
}

struct registraion_User_Previews: PreviewProvider {
    static var previews: some View {
        registraion_User()
    }
}
