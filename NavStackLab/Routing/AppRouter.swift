//
//  AppRouter.swift
//  NavStackLab
//
//  Created by JN on 2022-12-12.
//

import Foundation
import SwiftUI

// AppRouter keeps track of the app's navigation.
class AppRouter: ObservableObject {
    @Published var navPathOne: NavigationPath = NavigationPath()
    @Published var navPathTwo: NavigationPath = NavigationPath()
    @Published var navPathThree: NavigationPath = NavigationPath()

    @Published var selectedRootTab: RootTabState = .initial

    func display(_ viewable: any Viewable) {
        switch selectedRootTab {
        case .one:
            navPathOne.append(viewable)
        case .two:
            navPathTwo.append(viewable)
        case .three:
            navPathThree.append(viewable)
        }
    }

    // Takes an AppRoute from somewhere and acts accordingly.
    func forceNavigate(to appRoute: AppRoute) {
        selectedRootTab = appRoute.rootTab

        switch appRoute.rootTab {
        case .one:
            navPathOne = appRoute.navigationPath
        case .two:
            navPathTwo = appRoute.navigationPath
        case .three:
            navPathThree = appRoute.navigationPath
        }
    }
}
