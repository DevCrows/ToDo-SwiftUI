//
//  LandmarkDetail.swift
//  ToDo
//
//  Created by Francisco Barrios on 18/5/2564 BE.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark

    var landmarkIndex: Int {
           modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
       }
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                HStack{
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                Divider()
                Text("About Turtle Rock").font(.title2)
                Text(landmark.description)
            }.padding()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
