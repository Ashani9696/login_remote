//
//  Side_Menu.swift
//  login
//
//  Created by malindu pabasara on 2023-09-20.
//

import SwiftUI

struct  MenuItem: Identifiable{

    var id = UUID()
    let text: String
    let handler: () ->Void = {
        print("Tapped itrms")
    }
}

struct  MenuContent: View {
    let items: [MenuItem] = [
 MenuItem(text: "Home"),
        MenuItem(text: "Hom"),
        MenuItem(text: "Ho"),
        MenuItem(text: "settings"),
        MenuItem(text: "profile"),
        MenuItem(text: "reports"),
        ]
    
    var body: some View{
        ZStack{
            Color(UIColor(red: 33/255.0, green: 3/255.0, blue: 3/255.0, alpha: 1))
            
            VStack(alignment: .leading, spacing: 0){
                ForEach(items) { item in
                    HStack{
                        Text(item.text)
                            .foregroundColor(Color.black)
                            .bold()
                            .font(.system(size: 22))
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                    }
                    .onTapGesture {
                        
                    }
                    .padding()
                    
                    
                    Divider()
                    
                }
                Spacer()
            }
            .padding(.top, 25)
        }
    }
}

struct  SideMenu: View {
    let width: CGFloat
    let menuOpened: Bool
    let toggleMenu: ()->Void
    
    var body: some View{
        ZStack{
            //dimed the background view
            GeometryReader { _ in
                EmptyView()
                
            }
            .background(Color.gray.opacity(0.25))
            .opacity(self.menuOpened ? 1: 0)
            .animation(Animation.easeIn.delay(0.25))
            .onTapGesture {
                self.toggleMenu()
            }
            
            //Menu content
            HStack{
                MenuContent()
                    .frame(width: width)
                    .offset(x: menuOpened ? 0: -width)
                    .animation(.default)
                
                Spacer()
            }
            
        }
    }
}

struct Side_Menu: View {
    @State var menuOpened = false
    var body: some View {
        ZStack{
            if !menuOpened {
                Button(action: {
                    //oprn menu
                    self.menuOpened.toggle()
                    
                }, label: {
                    Text("Open Menu")
                        .bold()
                        .foregroundColor(Color.black)
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color(.systemBlue))
                })
                
            }
            SideMenu(width: UIScreen.main.bounds.width/1.8, menuOpened: menuOpened, toggleMenu: toggleMenu)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    func toggleMenu(){
        menuOpened.toggle()
    }
}

struct Side_Menu_Previews: PreviewProvider {
    static var previews: some View {
        Side_Menu()
    }
}
