//
//  savings_Det.swift
//  login
//
//  Created by malindu pabasara on 2023-09-25.
//

import SwiftUI

struct savings_Det: View {
    var body: some View {
        VStack{
            Text("Expenses  Details")
                .font(.largeTitle)
                .bold()
                .italic()
                .offset(y: -130)
            // padding(.vertical)
            
            ZStack{
                Text("Date")
                    .multilineTextAlignment(.leading)
                    .offset(x: -114)
                    .padding()
                
                
                
                
                
                
                
            }
            
        }
    }
}

struct savings_Det_Previews: PreviewProvider {
    static var previews: some View {
        savings_Det()
    }
}
