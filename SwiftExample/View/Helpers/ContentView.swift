//
//  ContentView.swift
//  SwiftExample
//
//  Created by Hoang Tien Dat on 19/11/2022.
//

import SwiftUI

struct ContentView: View {    
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
