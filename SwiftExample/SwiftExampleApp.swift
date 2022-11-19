//
//  SwiftExampleApp.swift
//  SwiftExample
//
//  Created by Hoang Tien Dat on 19/11/2022.
//

import SwiftUI

@main
struct SwiftExampleApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
