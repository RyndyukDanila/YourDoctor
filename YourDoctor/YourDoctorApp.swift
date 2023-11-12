//
//  YourDoctorApp.swift
//  YourDoctor
//
//  Created by  User on 12.11.2023.
//

import SwiftUI

@main
struct YourDoctorApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
