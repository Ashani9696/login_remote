//
//  Side_Menu.swift
//  login
//
//  Created by malindu pabasara on 2023-09-20.
//

import SwiftUI

struct  MenuContent: View {
    var body: some View{
        ZStack{
            
            
        }
    }
}

struct  SideMenu: View {
    var body: some View{
        ZStack{
            
            
        }
    }
}

struct Side_Menu: View {
    @State var menuOpened = false
    var body: some View {
        ZStack{
            Button(action: {
                //oprn menu
                self.menuOpened.toggle()
                
            }, label: {
                Text("Open Menu")
                    .bold()
                    .foregroundColor(Color.white)
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color(.systemBlue))
            })
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct Side_Menu_Previews: PreviewProvider {
    static var previews: some View {
        Side_Menu()
    }
}
