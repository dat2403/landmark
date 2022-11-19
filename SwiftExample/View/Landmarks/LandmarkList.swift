//
//  LandmarkList.swift
//  SwiftExample
//
//  Created by Hoang Tien Dat on 19/11/2022.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter{
            landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    } //set state
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorite Only") //event onclick
                }
                ForEach(filteredLandmarks){ // as FlatList
                    landmark in //render
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    }label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
