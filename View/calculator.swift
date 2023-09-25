//
//  calculator.swift
//  login
//
//  Created by malindu pabasara on 2023-09-25.
//

import SwiftUI

struct calculator: View {
    var body: some View {
        
        VStack{
        ZStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Tottal Income")
                     .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(UIColor(named: "p")!))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .offset(x:60)
                
                    
                
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Total Income")
                     .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(UIColor(named: "p")!))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .offset(x:-40)
                
                    
                
            })
        }
        
        ZStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Total Income")
                     .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(UIColor(named: "p")!))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                  .offset(x:60)
                
                    
                
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Total Income")
                     .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(UIColor(named: "p")!))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .offset(x:-40)
                
                    
                
            })
        }
        }
    }
}

struct calculator_Previews: PreviewProvider {
    static var previews: some View {
        calculator()
    }
}
