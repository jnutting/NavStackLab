//
//  AppRoute.swift
//  NavStackLab
//
//  Created by JN on 2022-12-13.
//

import SwiftUI

// An AppRoute represents the full navigation state of the app, which may for example
// be represented by a deep link passed to the app.
struct AppRoute {
    let rootTab: RootTabState
    let navigationPath: NavigationPath
}

extension AppRoute {
    // TODO: Implement this to receive inbound deeplinks and generate a route
    init?(url: URL) {

        return nil
    }
}
