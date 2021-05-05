//
//  VolcanoAppApp.swift
//  VolcanoApp
//
//  Created by Kristbjorg Oskarsdottir on 29.4.2021.
//

import SwiftUI

@main
struct VolcanoAppApp: App {
    
    @StateObject var dataModals = ApiModal()
 
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    MainAirView()
                }
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Loftgæði")
                }
                NavigationView {
                    MapView()
                }
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Kort")
                }
                NavigationView {
                    VideoView()
                }
                .tabItem {
                    Image(systemName: "video.fill")
                    Text("Live")
                }
            }
            .environmentObject(dataModals)
            .accentColor(.orange)
        }
    }
}
