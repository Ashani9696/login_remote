//
//  income_UI.swift
//  login
//
//  Created by malindu pabasara on 2023-09-20.
//

import SwiftUI
 
struct income_UI: View {
    @State private var incomewa = ""
    @State private var incomers = ""
    @State private var seldate = Date()
    var body: some View {
        
        //Side_Menu()
                //.padding(.top,100)
        NavigationView{
        
        VStack{
            
            NavigationLink(destination: expenses_Det()){
            Image(systemName: "arrow.right.circle")
                .imageScale(.large)
                .foregroundColor(Color(UIColor(named: "p")!))
                .offset(y: -110)
                .offset(x: 100)
                
            }
            ZStack{
            Text("Income Details")
                .font(.largeTitle)
                .bold()
                .italic()
                .offset(y: -90)
                // padding(.vertical)
            }
            ZStack{
                Text("Date")
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .offset(x: -114)
                    .padding()
                
                    
                
                DatePicker(" Date",selection: $seldate, displayedComponents:[.date])
                    .datePickerStyle(CompactDatePickerStyle())
                    .foregroundColor(Color(UIColor(named: "p")!))
                    .labelsHidden()
                    .padding(.horizontal)
                    .padding(.bottom,6)
                    .offset(y: 00)
                    .offset(x: 38)
                
                     //Text("Date")
            }
            
            ZStack{
                
                Text("Income")
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .offset(x: -114)
                    .padding()
                
            
            TextField("Enter text here  ",text: $incomewa)
                .frame(width: 160, height: 40, alignment:.trailing)
                .background(Color.gray.opacity(0.25))
                //.cornerRadius(10.0)
                //.padding(.horizontal)
                .padding(.bottom,10)
                .offset(x: 50)
                
            }
            
            
            ZStack{
                
                Text("Income Rs.")
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .offset(x: -114)
                    .padding()
                
                
            
            TextField("Enter text here",text: $incomers)
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
            .padding(.bottom)
            
            Text("Total income :  ")
                .offset(y:25)
            
            
        }
        }
        
        
        
      
            
        
    
        
        
    }
}

struct income_UI_Previews: PreviewProvider {
    static var previews: some View {
        income_UI()
    }
}
