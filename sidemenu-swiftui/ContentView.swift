//
//  ContentView.swift
//  sidemenu-swiftui
//
//  Created by Ana Carolina on 17/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sideMenuActived: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView()
            ZStack {
                RoundedRectangle(cornerRadius: sideMenuActived ? 32 : 0)
                    .foregroundColor(Color.pink)
                    .shadow(radius: sideMenuActived ? 32 : 0)
                VStack {
                    HStack {
                        Button(action: { self.sideMenuActived.toggle() }) {
                            Image(uiImage: sideMenuActived ? closeImage : menuListImage).accentColor(Color.black)
                                .frame(width: 44, height: 44, alignment: .center)
                                .scaleEffect(sideMenuActived ? 2 : 1)
                        }.padding(.top, 64).padding(.leading, 32)
                        Spacer()
                    }
                    Spacer()
                }
            }
            .offset(x: sideMenuActived ? 354 : 0)
            .scaleEffect(sideMenuActived ? 0.7 : 1)
            .animation(.spring(response: 0.5)).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("@acarolsf")
                    .foregroundColor(Color.white.opacity(0.8))
                    .font(.system(size: 17, weight: .regular))
                    .italic()
                    .padding(16)
            }
        }
    }
}

struct BackgroundView: View {
    var body: some View {
        Spacer()
            .background(Color(red: 232/255, green: 237/255, blue: 233/255)).edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView().previewLayout(.sizeThatFits)
    }
}
