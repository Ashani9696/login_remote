//
//  Splash1.swift
//  login
//
//  Created by malindu pabasara on 2023-09-25.
//

import SwiftUI

struct Splash1: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), center: .center, startRadius: 0, endRadius: 300)
                            .edgesIgnoringSafeArea(.all)
        
        if isActive {
            login_View()
        } else {
            VStack {
                
                VStack {
                    Image("poor")
                        .resizable()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 80))
                        .foregroundColor(.black)
                        .padding()
                    Text("Tracking your Expenses")
                        .font(Font.custom("Baskerville-Bold", size: 30))
                        .foregroundColor(.black.opacity(0.80))
                }
                //.scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}
}

struct Splash1_Previews: PreviewProvider {
    static var previews: some View {
        Splash1()
    }
}
