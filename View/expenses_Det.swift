//
//  expenses_Det.swift
//  login
//
//  Created by malindu pabasara on 2023-09-25.
//

import SwiftUI

struct expenses_Det: View {
    @State private var expens = ""
    @State private var expensrs = ""
    @State private var seldate = Date()
    var body: some View {
        VStack{
           
           
            Text("Expenses  Details")
                .font(.largeTitle)
                .bold()
                .italic()
                .offset(y: -70)
                // padding(.vertical)
            
            ZStack{
                Text("Date")
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .offset(x: -114)
                    .padding()
                
                    
                
                DatePicker(" Date",selection: $seldate, displayedComponents:[.date])
                    .datePickerStyle(CompactDatePickerStyle())
                    .labelsHidden()
                    .padding(.horizontal)
                    .padding(.bottom,6)
                    .offset(y: 00)
                    .offset(x: 38)
                     //Text("Date")
            }
            
            ZStack{
                
                Text("Expense for")
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .offset(x: -114)
                    .padding()
                
            
            TextField("Enter text here  ",text: $expens)
                .frame(width: 160, height: 40, alignment:.trailing)
                .background(Color.gray.opacity(0.25))
                //.cornerRadius(10.0)
                //.padding(.horizontal)
                .padding(.bottom,10)
                .offset(x: 50)
                
            }
            
            
            ZStack{
                
                Text("Expenses Rs.")
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .offset(x: -114)
                    .padding()
                
                
            
            TextField("Enter text here",text: $expensrs)
                .frame(width: 160, height: 40, alignment: .trailing)
                .background(Color.gray.opacity(0.25))
                //.cornerRadius(10.0)
                //.padding(.horizontal)
                .padding(.bottom,10)
                .offset(x: 50)
                
                
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Save")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(UIColor(named: "p")!))
                    .frame(maxWidth: .infinity)
                    .offset(y:25)
                
                    
                
            })
            
            //SideM()
            
            Text("Total Expenses :  ")
            
        }
        
        
        
      
            
        
    
        
        
    }
    }


struct expenses_Det_Previews: PreviewProvider {
    static var previews: some View {
        expenses_Det()
    }
}
