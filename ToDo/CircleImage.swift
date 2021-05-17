//
//  CircleImage.swift
//  ToDo
//
//  Created by Francisco Barrios on 16/5/2564 BE.
//

import SwiftUI

struct CircleImage: View {
    var body: some View{
            Image("1")
                .resizable()
                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
        }
}

struct Preview_CricleImage:PreviewProvider {
    static var previews: some View{
        CircleImage()
    }
}
