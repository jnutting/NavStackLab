//
//  ViewHelpers.swift
//  NavStackLab
//
//  Created by JN on 2022-12-21.
//

import SwiftUI

fileprivate struct NavigationDestinations: ViewModifier {
    func body(content: Content) -> some View {
        content
            .applyViewableNavigationDestination(for: Thing.self)
            .applyViewableNavigationDestination(for: Other.self)
    }
}

// Call this inside every NavigationStack to prepare it for displaying views for all "know" Viewable types.
extension View {
    func applyAppNavigationDestinations() -> some View {
        self.modifier(NavigationDestinations())
    }
}
