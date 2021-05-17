//
//  CircleImage.swift
//  ToDo
//
//  Created by Francisco Barrios on 16/5/2564 BE.
//

import SwiftUI

struct CircleImage: View {
    var body: some View{
            Image("turtlerock")
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
