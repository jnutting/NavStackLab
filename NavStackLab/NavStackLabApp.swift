//
//  NavStackLabApp.swift
//  NavStackLab
//
//  Created by JN on 2022-12-12.
//

import SwiftUI

@main
struct NavStackLabApp: App {
    let appRouter = AppRouter()
    
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(appRouter)
        }
    }
}
