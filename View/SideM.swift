//
//  SideM.swift
//  login
//
//  Created by malindu pabasara on 2023-09-22.
//

import SwiftUI



struct SideM: View {
    @State private var isMenuOpen = false
    
    var body: some View {
        
        NavigationView {
                   ZStack {
                       // Main content view
                       Color.white
                           .edgesIgnoringSafeArea(.all)
                       
                       // Side menu
                       SideMenuView(isOpen: $isMenuOpen)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  alignment: .leading)
                       // Content
                       VStack {
                           
                           Spacer()
                           
                           Button(action: {
                               withAnimation {
                                   isMenuOpen.toggle()
                               }
                           }) {
                               
                           }
                           .padding(.top, 680)
                           .padding(.vertical)
                       }
                   }
                   .navigationBarItems(leading: (
                       Button(action: {
                           withAnimation {
                               isMenuOpen.toggle()
                           }
                       }) {
                           Image(systemName: "line.horizontal.3")
                               .imageScale(.large)
                       }
                   ))
               }
           }
       }
struct SideMenuView: View {
    @Binding var isOpen: Bool

    var body: some View {
        // Add your side menu items here
        
            VStack(spacing: 50) {
            
            Spacer()
              
                
            Text("Home")
            Text("Profile")
            Text("Settings")
            Text("Calculator")
            Text("Reports")
            }
         
        
            
        .padding(.bottom,500)
            
            .padding(.horizontal)
            .padding(.vertical)
            
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  alignment: .leading)
        .frame(width: isOpen ? 200 : 0)
        .background(Color.gray.opacity(0.5))
        .offset(x: isOpen ? 0 : -250)
        .onTapGesture {
            withAnimation {
                isOpen.toggle()
                    
            }
            
        }
    }
}
struct SideM_Previews: PreviewProvider {
    static var previews: some View {
        SideM()
    }


}
