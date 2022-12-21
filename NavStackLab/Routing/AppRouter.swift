//
//  AppRouter.swift
//  NavStackLab
//
//  Created by JN on 2022-12-12.
//

import Foundation
import SwiftUI

// AppRouter keeps track of the app's navigation. Views can bind to its Published properties to affect display of
// a root TabView and NavigationStacks in each content view.
class AppRouter: ObservableObject {
    @Published var navPathOne: NavigationPath = NavigationPath()
    @Published var navPathTwo: NavigationPath = NavigationPath()
    @Published var navPathThree: NavigationPath = NavigationPath()

    @Published var selectedRootTab: RootTabState = .initial

    // Currently, all we do is push any Viewable object onto the relevant NavigationPath. We could make this method
    // as complex as we want, however. E.g. we might have some specific Viewable types that we'd want to display
    // in a modal presentation instead of within a NavigationStack. This is an area for further exploration.
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

    // Takes an AppRoute and makes the app navigate to the relevant content. This should be used sparingly, because
    // the user experience of being tossed around in the app programmatically can be confusing. An appropriate use
    // for this is when the app receiving an inbound URL at launch time.
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
