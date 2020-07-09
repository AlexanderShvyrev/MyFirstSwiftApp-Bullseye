//
//  AboutView.swift
//  Bullseye
//
//  Created by Alexander Shvyrev on 7/8/20.
//  Copyright © 2020 Alexander Shvyrev. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    struct LabelStyle: ViewModifier{
    func body(content:Content)->some View{
        return content
        .foregroundColor(Color.black)
        .font(Font.custom("Arial Rounded MT Bold", size:30))
            .padding(.top, 20)
            .padding(.bottom, 20)

        }
    }
    
    struct TextStyle: ViewModifier{
    func body(content:Content)->some View{
        return content
        .foregroundColor(Color.black)
        .font(Font.custom("Arial Rounded MT Bold", size:16))
            .padding(.bottom, 20)
            .padding(.leading, 60)
            .padding(.trailing, 60)


        }
    }
    
    struct Shadow: ViewModifier{
        func body(content:Content)->some View{
            return content
            .shadow(color: Color.black, radius: 5, x: 2, y: 2)
        }
    }
    var body: some View {
        VStack{
            Text("🎯Bullseye 🎯").modifier(LabelStyle())
            Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider. This is my first app made with tutorial").modifier(TextStyle())
            Text("The goal is to place the slider as close as possible to the target value. The closer you get, the more points you earn").modifier(TextStyle())
            Text("Enjoy!!!😎").modifier(TextStyle())
        }
        .navigationBarTitle("About")
        .background(Image("Background"), alignment: .center)
    }
    
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
