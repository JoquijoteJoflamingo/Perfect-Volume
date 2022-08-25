//
//  PerfectVolumeApp.swift
//  PerfectVolume
//
//  Created by Joseph Schaubroeck on 7/28/22.
//

import SwiftUI

@main
struct PerfectVolumeApp: App {
    @StateObject private var dataController = DataController()
    
    
    var body: some Scene {
        WindowGroup {
            MainMenuView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
